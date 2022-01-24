#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t num_matches; size_t match_buf_len; int num_patterns; size_t pattern_buf_len; scalar_t__ status; TYPE_5__* matches; TYPE_5__* patterns; } ;
struct TYPE_10__ {int status; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_4__ cdm; TYPE_2__ ccb_h; } ;
typedef  size_t uint32_t ;
struct periph_match_result {char* periph_name; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  target_id; } ;
struct periph_match_pattern {int flags; int /*<<< orphan*/  periph_name; int /*<<< orphan*/  path_id; } ;
struct mpt_standalone_disk {int /*<<< orphan*/  devname; int /*<<< orphan*/  target; scalar_t__ bus; } ;
struct dev_match_result {int dummy; } ;
struct dev_match_pattern {int dummy; } ;
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  path_id_t ;
typedef  int /*<<< orphan*/  ccb ;
struct TYPE_11__ {struct periph_match_result periph_result; } ;
struct TYPE_9__ {struct periph_match_pattern periph_pattern; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ result; TYPE_1__ pattern; } ;
typedef  TYPE_5__ CONFIG_PAGE_IOC_2 ;

/* Variables and functions */
 int /*<<< orphan*/  CAMIOCOMMAND ; 
 scalar_t__ CAM_DEV_MATCH_LAST ; 
 scalar_t__ CAM_DEV_MATCH_MORE ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 scalar_t__ DEV_MATCH_PERIPH ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PERIPH_MATCH_NAME ; 
 int PERIPH_MATCH_PATH ; 
 int /*<<< orphan*/  XPT_DEV_MATCH ; 
 int /*<<< orphan*/  FUNC0 (union ccb*,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*) ; 
 struct cam_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_device*,struct mpt_standalone_disk*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_device*,struct mpt_standalone_disk*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*) ; 
 TYPE_5__* FUNC9 (int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_5__*,struct periph_match_result*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  xptfd ; 

int
FUNC14(int fd, int *ndisks, struct mpt_standalone_disk **disksp)
{
	CONFIG_PAGE_IOC_2 *ioc2;
	struct mpt_standalone_disk *disks;
	struct periph_match_pattern *p;
	struct periph_match_result *r;
	struct cam_device *dev;
	union ccb ccb;
	path_id_t path_id;
	size_t bufsize;
	int count, error;
	uint32_t i;

	if (FUNC13() < 0)
		return (ENXIO);

	error = FUNC4(&path_id);
	if (error)
		return (error);

	for (count = 100;; count+= 100) {
		/* Try to fetch 'count' disks in one go. */
		FUNC0(&ccb, sizeof(ccb));

		ccb.ccb_h.func_code = XPT_DEV_MATCH;

		bufsize = sizeof(struct dev_match_result) * (count + 1);
		ccb.cdm.num_matches = 0;
		ccb.cdm.match_buf_len = bufsize;
		ccb.cdm.matches = FUNC1(1, bufsize);

		bufsize = sizeof(struct dev_match_pattern) * 1;
		ccb.cdm.num_patterns = 1;
		ccb.cdm.pattern_buf_len = bufsize;
		ccb.cdm.patterns = FUNC1(1, bufsize);

		/* Match any "da" peripherals. */
		ccb.cdm.patterns[0].type = DEV_MATCH_PERIPH;
		p = &ccb.cdm.patterns[0].pattern.periph_pattern;
		p->path_id = path_id;
		FUNC11(p->periph_name, sizeof(p->periph_name), "da");
		p->flags = PERIPH_MATCH_PATH | PERIPH_MATCH_NAME;

		if (FUNC8(xptfd, CAMIOCOMMAND, &ccb) < 0) {
			error = errno;
			FUNC7(ccb.cdm.matches);
			FUNC7(ccb.cdm.patterns);
			return (error);
		}
		FUNC7(ccb.cdm.patterns);

		/* Check for CCB errors. */
		if ((ccb.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
			FUNC7(ccb.cdm.matches);
			return (EIO);
		}

		/* If we need a longer list, try again. */
		if (ccb.cdm.status == CAM_DEV_MATCH_MORE) {
			FUNC7(ccb.cdm.matches);
			continue;
		}

		/* If we got an error, abort. */
		if (ccb.cdm.status != CAM_DEV_MATCH_LAST) {
			FUNC7(ccb.cdm.matches);
			return (EIO);
		}
		break;
	}

	/* Shortcut if we don't have any "da" devices. */
	if (ccb.cdm.num_matches == 0) {
		FUNC7(ccb.cdm.matches);
		*ndisks = 0;
		*disksp = NULL;
		return (0);
	}

	/* We should have N matches, 1 for each "da" device. */
	for (i = 0; i < ccb.cdm.num_matches; i++) {
		if (ccb.cdm.matches[i].type != DEV_MATCH_PERIPH) {
			FUNC12("mpt_fetch_disks got wrong CAM matches");
			FUNC7(ccb.cdm.matches);
			return (EIO);
		}
	}

	/*
	 * Some of the "da" peripherals may be for RAID volumes, so
	 * fetch the IOC 2 page (list of RAID volumes) so we can
	 * exclude them from the list.
	 */
	ioc2 = FUNC9(fd, 2, NULL);
	if (ioc2 == NULL)
		return (errno);
	disks = FUNC1(ccb.cdm.num_matches, sizeof(*disks));
	count = 0;
	for (i = 0; i < ccb.cdm.num_matches; i++) {
		r = &ccb.cdm.matches[i].result.periph_result;
		if (FUNC10(ioc2, r))
			continue;
		disks[count].bus = 0;
		disks[count].target = r->target_id;
		FUNC11(disks[count].devname, sizeof(disks[count].devname),
		    "%s%d", r->periph_name, r->unit_number);

		dev = FUNC3(disks[count].devname, O_RDWR);
		if (dev != NULL) {
			FUNC5(dev, &disks[count]);
			FUNC6(dev, &disks[count]);
			FUNC2(dev);
		}
		count++;
	}
	FUNC7(ccb.cdm.matches);
	FUNC7(ioc2);

	*ndisks = count;
	*disksp = disks;
	return (0);
}