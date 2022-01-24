#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct saf1761_otg_td {scalar_t__ channel; int error_stall; int error_any; int dw1_value; int max_packet_size; int short_pkt; int toggle; int remainder; int ep_index; scalar_t__ set_toggle; } ;
struct saf1761_otg_softc {int sc_host_async_map; int sc_host_async_suspend_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct saf1761_otg_softc*,int,int) ; 
 int SOTG_ATL_PTD_SKIP_PTD ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOTG_HOST_CHANNEL_MAX ; 
 int FUNC4 (scalar_t__) ; 
 int SOTG_PTD_DW0 ; 
 int SOTG_PTD_DW0_VALID ; 
 int SOTG_PTD_DW1 ; 
 int SOTG_PTD_DW1_ENABLE_SPLIT ; 
 int SOTG_PTD_DW2 ; 
 int SOTG_PTD_DW3 ; 
 int SOTG_PTD_DW3_ACTIVE ; 
 int SOTG_PTD_DW3_CERR_2 ; 
 int SOTG_PTD_DW3_ERRORS ; 
 int SOTG_PTD_DW3_HALTED ; 
 int SOTG_PTD_DW3_XFER_COUNT_HS ; 
 int SOTG_PTD_DW3_XFER_COUNT_SPLIT ; 
 int SOTG_PTD_DW4 ; 
 int SOTG_PTD_DW5 ; 
 int SOTG_PTD_DW6 ; 
 int SOTG_PTD_DW7 ; 
 scalar_t__ FUNC5 (struct saf1761_otg_softc*,struct saf1761_otg_td*) ; 
 int /*<<< orphan*/  FUNC6 (struct saf1761_otg_softc*,struct saf1761_otg_td*) ; 
 int FUNC7 (struct saf1761_otg_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct saf1761_otg_softc*,struct saf1761_otg_td*,int) ; 

__attribute__((used)) static uint8_t
FUNC9(struct saf1761_otg_softc *sc, struct saf1761_otg_td *td)
{
	uint32_t pdt_addr;
	uint32_t temp;

	if (td->channel < SOTG_HOST_CHANNEL_MAX) {
		uint32_t status;
		uint32_t count;
		uint8_t got_short;

		pdt_addr = FUNC4(td->channel);

		status = FUNC7(sc, pdt_addr + SOTG_PTD_DW3);

		FUNC0(5, "STATUS=0x%08x\n", status);

		if (status & SOTG_PTD_DW3_ACTIVE) {
			temp = FUNC7(sc,
			    pdt_addr + SOTG_PTD_DW0);
			if (temp & SOTG_PTD_DW0_VALID) {
				goto busy;
			} else {
				status = FUNC7(sc,
				    pdt_addr + SOTG_PTD_DW3);

				/* check if still active */
				if (status & SOTG_PTD_DW3_ACTIVE) {
					FUNC6(sc, td);
					goto retry;
				} else if (status & SOTG_PTD_DW3_HALTED) {
					if (!(status & SOTG_PTD_DW3_ERRORS))
						td->error_stall = 1;
					td->error_any = 1;
					goto complete;
				}
			}
		} else if (status & SOTG_PTD_DW3_HALTED) {
			if (!(status & SOTG_PTD_DW3_ERRORS))
				td->error_stall = 1;
			td->error_any = 1;
			goto complete;
		}
		if (td->dw1_value & SOTG_PTD_DW1_ENABLE_SPLIT)
			count = (status & SOTG_PTD_DW3_XFER_COUNT_SPLIT);
		else
			count = (status & SOTG_PTD_DW3_XFER_COUNT_HS);
		got_short = 0;

		/* verify the packet byte count */
		if (count != td->max_packet_size) {
			if (count < td->max_packet_size) {
				/* we have a short packet */
				td->short_pkt = 1;
				got_short = 1;
			} else {
				/* invalid USB packet */
				td->error_any = 1;
				goto complete;
			}
		}
		td->toggle ^= 1;

		/* verify the packet byte count */
		if (count > td->remainder) {
			/* invalid USB packet */
			td->error_any = 1;
			goto complete;
		}

		FUNC8(sc, td, count);

		/* check if we are complete */
		if ((td->remainder == 0) || got_short) {
			if (td->short_pkt)
				goto complete;
			/* else need to receive a zero length packet */
		}
		FUNC6(sc, td);
	}
retry:
	if (FUNC5(sc, td))
		goto busy;

	/* set toggle, if any */
	if (td->set_toggle) {
		td->set_toggle = 0;
		td->toggle = 1;
	}

	/* receive one more packet */

	pdt_addr = FUNC4(td->channel);

	FUNC1(sc, pdt_addr + SOTG_PTD_DW7, 0);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW6, 0);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW5, 0);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW4, 0);

	temp = SOTG_PTD_DW3_ACTIVE | (td->toggle << 25) |
	    SOTG_PTD_DW3_CERR_2;
	FUNC1(sc, pdt_addr + SOTG_PTD_DW3, temp);

	temp = (FUNC3(FUNC2(td->channel)) << 8);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW2, temp);

	temp = td->dw1_value | (1 << 10) /* IN-PID */ | (td->ep_index >> 1);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW1, temp);

	temp = (td->ep_index << 31) | (1 << 29) /* pkt-multiplier */ |
	    (td->max_packet_size << 18) /* wMaxPacketSize */ |
	    (td->max_packet_size << 3) /* transfer count */ |
	    SOTG_PTD_DW0_VALID;
	FUNC1(sc, pdt_addr + SOTG_PTD_DW0, temp);

	/* activate PTD */
	FUNC1(sc, SOTG_ATL_PTD_SKIP_PTD,
	    (~sc->sc_host_async_map) | sc->sc_host_async_suspend_map);
busy:
	return (1);	/* busy */
complete:
	FUNC6(sc, td);
	return (0);	/* complete */
}