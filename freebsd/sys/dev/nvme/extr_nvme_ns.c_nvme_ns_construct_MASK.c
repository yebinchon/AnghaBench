#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {scalar_t__ nsze; int flbas; int nlbaf; int noiob; } ;
struct nvme_namespace {int id; int boundary; TYPE_4__* cdev; int /*<<< orphan*/  flags; TYPE_1__ data; int /*<<< orphan*/  lock; struct nvme_controller* ctrlr; } ;
struct TYPE_6__ {int* vs; int vwc; } ;
struct nvme_controller {int min_page_size; int /*<<< orphan*/  dev; TYPE_2__ cdata; } ;
struct nvme_completion_poll_status {int /*<<< orphan*/  cpl; scalar_t__ done; } ;
struct make_dev_args {int mda_unit; int mda_mode; struct nvme_namespace* mda_si_drv1; int /*<<< orphan*/ * mda_devsw; } ;
struct TYPE_7__ {int /*<<< orphan*/  si_flags; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int NVME_CTRLR_DATA_VWC_PRESENT_MASK ; 
 int NVME_CTRLR_DATA_VWC_PRESENT_SHIFT ; 
 int NVME_MAX_NAMESPACES ; 
 int NVME_NS_DATA_FLBAS_FORMAT_MASK ; 
 int NVME_NS_DATA_FLBAS_FORMAT_SHIFT ; 
 int /*<<< orphan*/  NVME_NS_DEALLOCATE_SUPPORTED ; 
 int /*<<< orphan*/  NVME_NS_FLUSH_SUPPORTED ; 
 int /*<<< orphan*/  SI_UNMAPPED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct make_dev_args*) ; 
 int FUNC2 (struct make_dev_args*,TYPE_4__**,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  nvme_completion_poll_cb ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_controller*,int,TYPE_1__*,int /*<<< orphan*/ ,struct nvme_completion_poll_status*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  nvme_ns_cdevsw ; 
 int FUNC10 (struct nvme_namespace*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_controller*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int) ; 

int
FUNC14(struct nvme_namespace *ns, uint32_t id,
    struct nvme_controller *ctrlr)
{
	struct make_dev_args                    md_args;
	struct nvme_completion_poll_status	status;
	int                                     res;
	int					unit;
	uint8_t					flbas_fmt;
	uint8_t					vwc_present;

	ns->ctrlr = ctrlr;
	ns->id = id;

	/*
	 * Namespaces are reconstructed after a controller reset, so check
	 *  to make sure we only call mtx_init once on each mtx.
	 *
	 * TODO: Move this somewhere where it gets called at controller
	 *  construction time, which is not invoked as part of each
	 *  controller reset.
	 */
	if (!FUNC4(&ns->lock))
		FUNC3(&ns->lock, "nvme ns lock", NULL, MTX_DEF);

	status.done = 0;
	FUNC7(ctrlr, id, &ns->data,
	    nvme_completion_poll_cb, &status);
	FUNC6(&status);
	if (FUNC5(&status.cpl)) {
		FUNC11(ctrlr, "nvme_identify_namespace failed\n");
		return (ENXIO);
	}

	/* Convert data to host endian */
	FUNC9(&ns->data);

	/*
	 * If the size of is zero, chances are this isn't a valid
	 * namespace (eg one that's not been configured yet). The
	 * standard says the entire id will be zeros, so this is a
	 * cheap way to test for that.
	 */
	if (ns->data.nsze == 0)
		return (ENXIO);

	flbas_fmt = (ns->data.flbas >> NVME_NS_DATA_FLBAS_FORMAT_SHIFT) &
		NVME_NS_DATA_FLBAS_FORMAT_MASK;
	/*
	 * Note: format is a 0-based value, so > is appropriate here,
	 *  not >=.
	 */
	if (flbas_fmt > ns->data.nlbaf) {
		FUNC13("lba format %d exceeds number supported (%d)\n",
		    flbas_fmt, ns->data.nlbaf + 1);
		return (ENXIO);
	}

	/*
	 * Older Intel devices advertise in vendor specific space an alignment
	 * that improves performance.  If present use for the stripe size.  NVMe
	 * 1.3 standardized this as NOIOB, and newer Intel drives use that.
	 */
	switch (FUNC12(ctrlr->dev)) {
	case 0x09538086:		/* Intel DC PC3500 */
	case 0x0a538086:		/* Intel DC PC3520 */
	case 0x0a548086:		/* Intel DC PC4500 */
	case 0x0a558086:		/* Dell Intel P4600 */
		if (ctrlr->cdata.vs[3] != 0)
			ns->boundary =
			    (1 << ctrlr->cdata.vs[3]) * ctrlr->min_page_size;
		else
			ns->boundary = 0;
		break;
	default:
		ns->boundary = ns->data.noiob * FUNC10(ns);
		break;
	}

	if (FUNC8(&ctrlr->cdata))
		ns->flags |= NVME_NS_DEALLOCATE_SUPPORTED;

	vwc_present = (ctrlr->cdata.vwc >> NVME_CTRLR_DATA_VWC_PRESENT_SHIFT) &
		NVME_CTRLR_DATA_VWC_PRESENT_MASK;
	if (vwc_present)
		ns->flags |= NVME_NS_FLUSH_SUPPORTED;

	/*
	 * cdev may have already been created, if we are reconstructing the
	 *  namespace after a controller-level reset.
	 */
	if (ns->cdev != NULL)
		return (0);

	/*
	 * Namespace IDs start at 1, so we need to subtract 1 to create a
	 *  correct unit number.
	 */
	unit = FUNC0(ctrlr->dev) * NVME_MAX_NAMESPACES + ns->id - 1;

	FUNC1(&md_args);
	md_args.mda_devsw = &nvme_ns_cdevsw;
	md_args.mda_unit = unit;
	md_args.mda_mode = 0600;
	md_args.mda_si_drv1 = ns;
	res = FUNC2(&md_args, &ns->cdev, "nvme%dns%d",
	    FUNC0(ctrlr->dev), ns->id);
	if (res != 0)
		return (ENXIO);

	ns->cdev->si_flags |= SI_UNMAPPED;

	return (0);
}