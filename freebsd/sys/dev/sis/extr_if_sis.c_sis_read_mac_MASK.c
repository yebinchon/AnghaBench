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
typedef  int /*<<< orphan*/  uint16_t ;
struct sis_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sis_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sis_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sis_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIS_CSR ; 
 int SIS_CSR_RELOAD ; 
 int SIS_FILTADDR_PAR0 ; 
 int SIS_FILTADDR_PAR1 ; 
 int SIS_FILTADDR_PAR2 ; 
 int SIS_RXFILTCTL_ENABLE ; 
 int /*<<< orphan*/  SIS_RXFILT_CTL ; 
 int /*<<< orphan*/  SIS_RXFILT_DATA ; 

__attribute__((used)) static void
FUNC3(struct sis_softc *sc, device_t dev, caddr_t dest)
{
	uint32_t		filtsave, csrsave;

	filtsave = FUNC1(sc, SIS_RXFILT_CTL);
	csrsave = FUNC1(sc, SIS_CSR);

	FUNC2(sc, SIS_CSR, SIS_CSR_RELOAD | filtsave);
	FUNC2(sc, SIS_CSR, 0);

	FUNC2(sc, SIS_RXFILT_CTL, filtsave & ~SIS_RXFILTCTL_ENABLE);

	FUNC2(sc, SIS_RXFILT_CTL, SIS_FILTADDR_PAR0);
	((uint16_t *)dest)[0] = FUNC0(sc, SIS_RXFILT_DATA);
	FUNC2(sc, SIS_RXFILT_CTL,SIS_FILTADDR_PAR1);
	((uint16_t *)dest)[1] = FUNC0(sc, SIS_RXFILT_DATA);
	FUNC2(sc, SIS_RXFILT_CTL, SIS_FILTADDR_PAR2);
	((uint16_t *)dest)[2] = FUNC0(sc, SIS_RXFILT_DATA);

	FUNC2(sc, SIS_RXFILT_CTL, filtsave);
	FUNC2(sc, SIS_CSR, csrsave);
}