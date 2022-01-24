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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_int ;
struct sec_softc {scalar_t__ sc_channel_idle_mask; int sc_version; } ;
struct sec_desc {int /*<<< orphan*/  sd_desc_paddr; } ;

/* Variables and functions */
 int SEC_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SEC_CHAN_CSR2_FFLVL_M ; 
 scalar_t__ SEC_CHAN_CSR2_FFLVL_S ; 
 scalar_t__ SEC_CHAN_CSR3_FFLVL_M ; 
 scalar_t__ SEC_CHAN_CSR3_FFLVL_S ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ SEC_MAX_FIFO_LEVEL ; 
 scalar_t__ FUNC3 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  controller ; 

__attribute__((used)) static int
FUNC5(struct sec_softc *sc, struct sec_desc *desc, int channel)
{
	u_int fflvl = SEC_MAX_FIFO_LEVEL;
	uint64_t reg;
	int i;

	FUNC2(sc, controller);

	/* Find free channel if have not got one */
	if (channel < 0) {
		for (i = 0; i < SEC_CHANNELS; i++) {
			reg = FUNC3(sc, FUNC0(channel));

			if ((reg & sc->sc_channel_idle_mask) == 0) {
				channel = i;
				break;
			}
		}
	}

	/* There is no free channel */
	if (channel < 0)
		return (-1);

	/* Check FIFO level on selected channel */
	reg = FUNC3(sc, FUNC0(channel));

	switch(sc->sc_version) {
	case 2:
		fflvl = (reg >> SEC_CHAN_CSR2_FFLVL_S) & SEC_CHAN_CSR2_FFLVL_M;
		break;
	case 3:
		fflvl = (reg >> SEC_CHAN_CSR3_FFLVL_S) & SEC_CHAN_CSR3_FFLVL_M;
		break;
	}

	if (fflvl >= SEC_MAX_FIFO_LEVEL)
		return (-1);

	/* Enqueue descriptor in channel */
	FUNC4(sc, FUNC1(channel), desc->sd_desc_paddr);

	return (channel);
}