#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct vtscsi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,int,union ccb*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 

__attribute__((used)) static void
FUNC3(struct vtscsi_softc *sc, union ccb *ccb)
{
	int error;

	error = FUNC1(sc);
	if (error == 0)
		ccb->ccb_h.status = CAM_REQ_CMP;
	else
		ccb->ccb_h.status = CAM_REQ_CMP_ERR;

	FUNC0(sc, VTSCSI_TRACE, "error=%d ccb=%p status=%#x\n",
	    error, ccb, ccb->ccb_h.status);

	FUNC2(ccb);
}