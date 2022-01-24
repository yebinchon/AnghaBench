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
struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  channel; } ;
typedef  int /*<<< orphan*/  ahc_queue_alg ;

/* Variables and functions */
 int /*<<< orphan*/  AC_TRANSFER_NEG ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
	     ahc_queue_alg alg)
{
 	FUNC0(ahc, devinfo, alg);
 	FUNC1(ahc, devinfo->channel, devinfo->target,
 		       devinfo->lun, AC_TRANSFER_NEG, &alg);
}