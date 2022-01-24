#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iscsi_session {int dummy; } ;
struct iscsi_outstanding {TYPE_2__* io_ccb; } ;
typedef  int cam_status ;
struct TYPE_3__ {int status; int /*<<< orphan*/  path; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int CAM_DEV_QFRZN ; 
 int CAM_SIM_QUEUED ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*,struct iscsi_outstanding*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct iscsi_session *is,
    struct iscsi_outstanding *io, cam_status status)
{

	FUNC1(is);

	if (io->io_ccb != NULL) {
		io->io_ccb->ccb_h.status &= ~(CAM_SIM_QUEUED | CAM_STATUS_MASK);
		io->io_ccb->ccb_h.status |= status;
		if ((io->io_ccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
			io->io_ccb->ccb_h.status |= CAM_DEV_QFRZN;
			FUNC4(io->io_ccb->ccb_h.path, 1);
			FUNC0(is, "freezing devq");
		}
		FUNC3(io->io_ccb);
	}
	FUNC2(is, io);
}