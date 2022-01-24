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
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_SCSI_MSK ; 
 int CURRFIFO ; 
 int /*<<< orphan*/  DFFSTAT ; 
 int FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int,int) ; 

__attribute__((used)) static __inline int
FUNC3(struct ahd_softc *ahd)
{
	u_int active_fifo;

	FUNC0(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
	active_fifo = FUNC1(ahd, DFFSTAT) & CURRFIFO;
	switch (active_fifo) {
	case 0:
	case 1:
		FUNC2(ahd, active_fifo, active_fifo);
		return (1);
	default:
		return (0);
	}
}