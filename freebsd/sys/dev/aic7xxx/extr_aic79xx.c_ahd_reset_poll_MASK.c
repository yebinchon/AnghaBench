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
typedef  int u_int ;
struct ahd_softc {int /*<<< orphan*/  flags; int /*<<< orphan*/  reset_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int /*<<< orphan*/  AHD_RESET_POLL_ACTIVE ; 
 int /*<<< orphan*/  AHD_RESET_POLL_MS ; 
 int CLRSCSIRSTI ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int ENAUTOATNP ; 
 int ENRSELI ; 
 int ENSCSIRST ; 
 int ENSELI ; 
 int SCSIRSTI ; 
 int /*<<< orphan*/  SCSISEQ1 ; 
 int /*<<< orphan*/  SCSISEQ_TEMPLATE ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ahd_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct	ahd_softc *ahd = (struct ahd_softc *)arg;
	u_int	scsiseq1;
	
	FUNC1(ahd);
	FUNC3(ahd);
	FUNC7(ahd);
	FUNC4(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	FUNC2(ahd, CLRSINT1, CLRSCSIRSTI);
	if ((FUNC0(ahd, SSTAT1) & SCSIRSTI) != 0) {
		FUNC9(&ahd->reset_timer, AHD_RESET_POLL_MS,
				ahd_reset_poll, ahd);
		FUNC6(ahd);
		FUNC5(ahd);
		return;
	}

	/* Reset is now low.  Complete chip reinitialization. */
	FUNC2(ahd, SIMODE1, FUNC0(ahd, SIMODE1) | ENSCSIRST);
	scsiseq1 = FUNC0(ahd, SCSISEQ_TEMPLATE);
	FUNC2(ahd, SCSISEQ1, scsiseq1 & (ENSELI|ENRSELI|ENAUTOATNP));
	FUNC6(ahd);
	ahd->flags &= ~AHD_RESET_POLL_ACTIVE;
	FUNC8(ahd);
	FUNC5(ahd);
}