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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_SCSI_MSK ; 
 int /*<<< orphan*/  BRDCTL ; 
 int /*<<< orphan*/  BRDDAT ; 
 int BRDEN ; 
 int BRDRW ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(struct ahd_softc *ahd, u_int addr, uint8_t *value)
{
	int	error;

	FUNC0(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
	if (addr > 7)
		FUNC5("ahd_read_flexport: address out of range");
	FUNC3(ahd, BRDCTL, BRDRW|BRDEN|(addr << 3));
	error = FUNC4(ahd);
	if (error != 0)
		return (error);
	*value = FUNC2(ahd, BRDDAT);
	FUNC3(ahd, BRDCTL, 0);
	FUNC1(ahd);
	return (0);
}