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
typedef  int /*<<< orphan*/  uint32_t ;
struct scb {int dummy; } ;
struct ahd_softc {int dummy; } ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_INPROG ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct scb*) ; 
 scalar_t__ FUNC2 (struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct scb*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ahd_softc *ahd, struct scb *scb, uint32_t status)
{
	cam_status ostat;
	cam_status cstat;

	ostat = FUNC2(scb);
	if (ostat == CAM_REQ_INPROG)
		FUNC3(scb, status);
	cstat = FUNC2(scb);
	if (cstat != CAM_REQ_CMP)
		FUNC1(scb);
	FUNC0(ahd, scb);
}