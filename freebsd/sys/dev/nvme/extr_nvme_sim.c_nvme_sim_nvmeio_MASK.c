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
struct TYPE_4__ {scalar_t__ func_code; int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  status; } ;
struct ccb_nvmeio {int /*<<< orphan*/  cmd; TYPE_1__ ccb_h; int /*<<< orphan*/  dxfer_len; void* data_ptr; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_nvmeio nvmeio; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nvme_request {int /*<<< orphan*/  cmd; } ;
struct nvme_controller {int dummy; } ;
struct cam_sim {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int CAM_DATA_BIO ; 
 int CAM_DATA_MASK ; 
 int CAM_DATA_SG ; 
 int /*<<< orphan*/  CAM_RESRC_UNAVAIL ; 
 int /*<<< orphan*/  CAM_SIM_QUEUED ; 
 scalar_t__ XPT_NVME_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nvme_request* FUNC1 (struct bio*,int /*<<< orphan*/ ,union ccb*) ; 
 struct nvme_request* FUNC2 (union ccb*,int /*<<< orphan*/ ,union ccb*) ; 
 struct nvme_request* FUNC3 (int /*<<< orphan*/ ,union ccb*) ; 
 struct nvme_request* FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_controller*,struct nvme_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_controller*,struct nvme_request*) ; 
 int /*<<< orphan*/  nvme_sim_nvmeio_done ; 
 struct nvme_controller* FUNC7 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(struct cam_sim *sim, union ccb *ccb)
{
	struct ccb_nvmeio	*nvmeio = &ccb->nvmeio;
	struct nvme_request	*req;
	void			*payload;
	uint32_t		size;
	struct nvme_controller *ctrlr;

	ctrlr = FUNC7(sim);
	payload = nvmeio->data_ptr;
	size = nvmeio->dxfer_len;
	/* SG LIST ??? */
	if ((nvmeio->ccb_h.flags & CAM_DATA_MASK) == CAM_DATA_BIO)
		req = FUNC1((struct bio *)payload,
		    nvme_sim_nvmeio_done, ccb);
	else if ((nvmeio->ccb_h.flags & CAM_DATA_SG) == CAM_DATA_SG)
		req = FUNC2(ccb, nvme_sim_nvmeio_done, ccb);
	else if (payload == NULL)
		req = FUNC3(nvme_sim_nvmeio_done, ccb);
	else
		req = FUNC4(payload, size,
		    nvme_sim_nvmeio_done, ccb);

	if (req == NULL) {
		nvmeio->ccb_h.status = CAM_RESRC_UNAVAIL;
		FUNC8(ccb);
		return;
	}
	ccb->ccb_h.status |= CAM_SIM_QUEUED;

	FUNC0(&req->cmd, &ccb->nvmeio.cmd, sizeof(ccb->nvmeio.cmd));

	if (ccb->ccb_h.func_code == XPT_NVME_IO)
		FUNC6(ctrlr, req);
	else
		FUNC5(ctrlr, req);
}