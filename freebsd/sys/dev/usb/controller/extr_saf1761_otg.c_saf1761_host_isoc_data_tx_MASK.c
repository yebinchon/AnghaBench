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
struct saf1761_otg_td {scalar_t__ channel; int max_packet_size; int remainder; int short_pkt; int uframe; int dw1_value; int ep_index; } ;
struct saf1761_otg_softc {int sc_host_isoc_map; int sc_host_isoc_suspend_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct saf1761_otg_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOTG_HOST_CHANNEL_MAX ; 
 int SOTG_ISO_PTD_SKIP_PTD ; 
 int FUNC4 (scalar_t__) ; 
 int SOTG_PTD_DW0 ; 
 int SOTG_PTD_DW0_VALID ; 
 int SOTG_PTD_DW1 ; 
 int SOTG_PTD_DW2 ; 
 int SOTG_PTD_DW3 ; 
 int SOTG_PTD_DW3_ACTIVE ; 
 int SOTG_PTD_DW3_CERR_3 ; 
 int SOTG_PTD_DW3_HALTED ; 
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
	uint32_t count;

	if (td->channel < SOTG_HOST_CHANNEL_MAX) {
		uint32_t status;

		pdt_addr = FUNC4(td->channel);

		status = FUNC7(sc, pdt_addr + SOTG_PTD_DW3);

		FUNC0(5, "STATUS=0x%08x\n", status);

		if (status & SOTG_PTD_DW3_ACTIVE) {
			goto busy;
		} else if (status & SOTG_PTD_DW3_HALTED) {
			goto complete;
		}
		goto complete;
	}
	if (FUNC5(sc, td))
		goto busy;

	count = td->max_packet_size;
	if (td->remainder < count) {
		/* we have a short packet */
		td->short_pkt = 1;
		count = td->remainder;
	}

	FUNC8(sc, td, count);

	/* send one more packet */

	pdt_addr = FUNC4(td->channel);

	FUNC1(sc, pdt_addr + SOTG_PTD_DW7, 0);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW6, 0);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW5, 0);

	temp = (1U << (td->uframe & 7));	/* start mask or start split */
	FUNC1(sc, pdt_addr + SOTG_PTD_DW4, temp);

	temp = SOTG_PTD_DW3_ACTIVE | SOTG_PTD_DW3_CERR_3;
	FUNC1(sc, pdt_addr + SOTG_PTD_DW3, temp);

	temp = (FUNC3(FUNC2(td->channel)) << 8) |
	    (td->uframe & 0xF8);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW2, temp);

	temp = td->dw1_value | (0 << 10) /* OUT-PID */ | (td->ep_index >> 1);
	FUNC1(sc, pdt_addr + SOTG_PTD_DW1, temp);

	temp = (td->ep_index << 31) | (1 << 29) /* pkt-multiplier */ |
	    (count << 18) /* wMaxPacketSize */ |
	    (count << 3) /* transfer count */ |
	    SOTG_PTD_DW0_VALID;
	FUNC1(sc, pdt_addr + SOTG_PTD_DW0, temp);

	/* activate PTD */
	FUNC1(sc, SOTG_ISO_PTD_SKIP_PTD,
	    (~sc->sc_host_isoc_map) | sc->sc_host_isoc_suspend_map);
busy:
	return (1);	/* busy */
complete:
	FUNC6(sc, td);
	return (0);	/* complete */
}