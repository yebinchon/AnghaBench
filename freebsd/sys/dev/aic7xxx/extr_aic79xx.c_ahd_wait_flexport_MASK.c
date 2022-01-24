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
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_SCSI_MSK ; 
 int /*<<< orphan*/  BRDCTL ; 
 int ETIMEDOUT ; 
 int FLXARBACK ; 
 int FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(struct ahd_softc *ahd)
{
	int cnt;

	FUNC0(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
	cnt = 1000000 * 2 / 5;
	while ((FUNC1(ahd, BRDCTL) & FLXARBACK) == 0 && --cnt)
		FUNC2(5);

	if (cnt == 0)
		return (ETIMEDOUT);
	return (0);
}