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
typedef  int uint32_t ;
struct alc_softc {int alc_flags; int /*<<< orphan*/  alc_int_rx_mod; } ;

/* Variables and functions */
 int ALC_FLAG_AR816X_FAMILY ; 
 int ALC_FLAG_MSI ; 
 int ALC_FLAG_MSIX ; 
 int /*<<< orphan*/  ALC_MSI_RETRANS_TIMER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int MSI_RETRANS_MASK_SEL_LINE ; 
 int MSI_RETRANS_MASK_SEL_STD ; 
 int MSI_RETRANS_TIMER_MASK ; 

__attribute__((used)) static void
FUNC3(struct alc_softc *sc)
{
	uint32_t ctl, mod;

	if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0) {
		/*
		 * It seems interrupt moderation is controlled by
		 * ALC_MSI_RETRANS_TIMER register if MSI/MSIX is active.
		 * Driver uses RX interrupt moderation parameter to
		 * program ALC_MSI_RETRANS_TIMER register.
		 */
		ctl = FUNC1(sc, ALC_MSI_RETRANS_TIMER);
		ctl &= ~MSI_RETRANS_TIMER_MASK;
		ctl &= ~MSI_RETRANS_MASK_SEL_LINE;
		mod = FUNC0(sc->alc_int_rx_mod);
		if (mod == 0)
			mod = 1;
		ctl |= mod;
		if ((sc->alc_flags & ALC_FLAG_MSIX) != 0)
			FUNC2(sc, ALC_MSI_RETRANS_TIMER, ctl |
			    MSI_RETRANS_MASK_SEL_STD);
		else if ((sc->alc_flags & ALC_FLAG_MSI) != 0)
			FUNC2(sc, ALC_MSI_RETRANS_TIMER, ctl |
			    MSI_RETRANS_MASK_SEL_LINE);
		else
			FUNC2(sc, ALC_MSI_RETRANS_TIMER, 0);
	}
}