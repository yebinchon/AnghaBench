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
typedef  int u_long ;
struct thread {int dummy; } ;
struct mpt_softc {int dummy; } ;
struct mpt_raid_action32 {int len; int /*<<< orphan*/  write; int /*<<< orphan*/  ioc_status; int /*<<< orphan*/  action_status; int /*<<< orphan*/  action_data; int /*<<< orphan*/  volume_status; void* buf; int /*<<< orphan*/  action_data_word; int /*<<< orphan*/  phys_disk_num; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  volume_bus; int /*<<< orphan*/  action; } ;
struct mpt_raid_action {int len; int /*<<< orphan*/  write; int /*<<< orphan*/  ioc_status; int /*<<< orphan*/  action_status; int /*<<< orphan*/  action_data; int /*<<< orphan*/  volume_status; int /*<<< orphan*/ * buf; int /*<<< orphan*/  action_data_word; int /*<<< orphan*/  phys_disk_num; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  volume_bus; int /*<<< orphan*/  action; } ;
struct mpt_page_memory {int /*<<< orphan*/ * vaddr; } ;
struct mpt_ext_cfg_page_req32 {int len; int /*<<< orphan*/  ioc_status; void* buf; int /*<<< orphan*/  page_address; int /*<<< orphan*/  header; } ;
struct mpt_ext_cfg_page_req {int len; int /*<<< orphan*/  ioc_status; int /*<<< orphan*/ * buf; int /*<<< orphan*/  page_address; int /*<<< orphan*/  header; } ;
struct mpt_cfg_page_req32 {int len; int /*<<< orphan*/  ioc_status; void* buf; int /*<<< orphan*/  page_address; int /*<<< orphan*/  header; } ;
struct mpt_cfg_page_req {int len; int /*<<< orphan*/  ioc_status; int /*<<< orphan*/ * buf; int /*<<< orphan*/  page_address; int /*<<< orphan*/  header; } ;
struct cdev {struct mpt_softc* si_drv1; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  CONFIG_PAGE_HEADER ;
typedef  int /*<<< orphan*/  CONFIG_EXTENDED_PAGE_HEADER ;

/* Variables and functions */
 int ENOIOCTL ; 
#define  MPTIO_RAID_ACTION 139 
#define  MPTIO_RAID_ACTION32 138 
#define  MPTIO_READ_CFG_HEADER 137 
#define  MPTIO_READ_CFG_HEADER32 136 
#define  MPTIO_READ_CFG_PAGE 135 
#define  MPTIO_READ_CFG_PAGE32 134 
#define  MPTIO_READ_EXT_CFG_HEADER 133 
#define  MPTIO_READ_EXT_CFG_HEADER32 132 
#define  MPTIO_READ_EXT_CFG_PAGE 131 
#define  MPTIO_READ_EXT_CFG_PAGE32 130 
#define  MPTIO_WRITE_CFG_PAGE 129 
#define  MPTIO_WRITE_CFG_PAGE32 128 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct mpt_softc*,struct mpt_page_memory*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_page_memory*) ; 
 int FUNC9 (struct mpt_softc*,struct mpt_raid_action*,struct mpt_page_memory*) ; 
 int FUNC10 (struct mpt_softc*,struct mpt_cfg_page_req*) ; 
 int FUNC11 (struct mpt_softc*,struct mpt_cfg_page_req*,struct mpt_page_memory*) ; 
 int FUNC12 (struct mpt_softc*,struct mpt_ext_cfg_page_req*) ; 
 int FUNC13 (struct mpt_softc*,struct mpt_ext_cfg_page_req*,struct mpt_page_memory*) ; 
 int FUNC14 (struct mpt_softc*,struct mpt_cfg_page_req*,struct mpt_page_memory*) ; 

__attribute__((used)) static int
FUNC15(struct cdev *dev, u_long cmd, caddr_t arg, int flag, struct thread *td)
{
	struct mpt_softc *mpt;
	struct mpt_cfg_page_req *page_req;
	struct mpt_ext_cfg_page_req *ext_page_req;
	struct mpt_raid_action *raid_act;
	struct mpt_page_memory mpt_page;
#ifdef __amd64__
	struct mpt_cfg_page_req32 *page_req32;
	struct mpt_cfg_page_req page_req_swab;
	struct mpt_ext_cfg_page_req32 *ext_page_req32;
	struct mpt_ext_cfg_page_req ext_page_req_swab;
	struct mpt_raid_action32 *raid_act32;
	struct mpt_raid_action raid_act_swab;
#endif
	int error;

	mpt = dev->si_drv1;
	page_req = (void *)arg;
	ext_page_req = (void *)arg;
	raid_act = (void *)arg;
	mpt_page.vaddr = NULL;

#ifdef __amd64__
	/* Convert 32-bit structs to native ones. */
	page_req32 = (void *)arg;
	ext_page_req32 = (void *)arg;
	raid_act32 = (void *)arg;
	switch (cmd) {
	case MPTIO_READ_CFG_HEADER32:
	case MPTIO_READ_CFG_PAGE32:
	case MPTIO_WRITE_CFG_PAGE32:
		page_req = &page_req_swab;
		page_req->header = page_req32->header;
		page_req->page_address = page_req32->page_address;
		page_req->buf = FUNC2(page_req32->buf);
		page_req->len = page_req32->len;
		page_req->ioc_status = page_req32->ioc_status;
		break;
	case MPTIO_READ_EXT_CFG_HEADER32:
	case MPTIO_READ_EXT_CFG_PAGE32:
		ext_page_req = &ext_page_req_swab;
		ext_page_req->header = ext_page_req32->header;
		ext_page_req->page_address = ext_page_req32->page_address;
		ext_page_req->buf = FUNC2(ext_page_req32->buf);
		ext_page_req->len = ext_page_req32->len;
		ext_page_req->ioc_status = ext_page_req32->ioc_status;
		break;
	case MPTIO_RAID_ACTION32:
		raid_act = &raid_act_swab;
		raid_act->action = raid_act32->action;
		raid_act->volume_bus = raid_act32->volume_bus;
		raid_act->volume_id = raid_act32->volume_id;
		raid_act->phys_disk_num = raid_act32->phys_disk_num;
		raid_act->action_data_word = raid_act32->action_data_word;
		raid_act->buf = FUNC2(raid_act32->buf);
		raid_act->len = raid_act32->len;
		raid_act->volume_status = raid_act32->volume_status;
		FUNC4(raid_act32->action_data, raid_act->action_data,
		    sizeof(raid_act->action_data));
		raid_act->action_status = raid_act32->action_status;
		raid_act->ioc_status = raid_act32->ioc_status;
		raid_act->write = raid_act32->write;
		break;
	}
#endif

	switch (cmd) {
#ifdef __amd64__
	case MPTIO_READ_CFG_HEADER32:
#endif
	case MPTIO_READ_CFG_HEADER:
		FUNC0(mpt);
		error = FUNC10(mpt, page_req);
		FUNC1(mpt);
		break;
#ifdef __amd64__
	case MPTIO_READ_CFG_PAGE32:
#endif
	case MPTIO_READ_CFG_PAGE:
		error = FUNC7(mpt, &mpt_page, page_req->len);
		if (error)
			break;
		error = FUNC5(page_req->buf, mpt_page.vaddr,
		    sizeof(CONFIG_PAGE_HEADER));
		if (error)
			break;
		FUNC0(mpt);
		error = FUNC11(mpt, page_req, &mpt_page);
		FUNC1(mpt);
		if (error)
			break;
		error = FUNC6(mpt_page.vaddr, page_req->buf, page_req->len);
		break;
#ifdef __amd64__
	case MPTIO_READ_EXT_CFG_HEADER32:
#endif
	case MPTIO_READ_EXT_CFG_HEADER:
		FUNC0(mpt);
		error = FUNC12(mpt, ext_page_req);
		FUNC1(mpt);
		break;
#ifdef __amd64__
	case MPTIO_READ_EXT_CFG_PAGE32:
#endif
	case MPTIO_READ_EXT_CFG_PAGE:
		error = FUNC7(mpt, &mpt_page, ext_page_req->len);
		if (error)
			break;
		error = FUNC5(ext_page_req->buf, mpt_page.vaddr,
		    sizeof(CONFIG_EXTENDED_PAGE_HEADER));
		if (error)
			break;
		FUNC0(mpt);
		error = FUNC13(mpt, ext_page_req, &mpt_page);
		FUNC1(mpt);
		if (error)
			break;
		error = FUNC6(mpt_page.vaddr, ext_page_req->buf,
		    ext_page_req->len);
		break;
#ifdef __amd64__
	case MPTIO_WRITE_CFG_PAGE32:
#endif
	case MPTIO_WRITE_CFG_PAGE:
		error = FUNC7(mpt, &mpt_page, page_req->len);
		if (error)
			break;
		error = FUNC5(page_req->buf, mpt_page.vaddr, page_req->len);
		if (error)
			break;
		FUNC0(mpt);
		error = FUNC14(mpt, page_req, &mpt_page);
		FUNC1(mpt);
		break;
#ifdef __amd64__
	case MPTIO_RAID_ACTION32:
#endif
	case MPTIO_RAID_ACTION:
		if (raid_act->buf != NULL) {
			error = FUNC7(mpt, &mpt_page, raid_act->len);
			if (error)
				break;
			error = FUNC5(raid_act->buf, mpt_page.vaddr,
			    raid_act->len);
			if (error)
				break;
		}
		FUNC0(mpt);
		error = FUNC9(mpt, raid_act, &mpt_page);
		FUNC1(mpt);
		if (error)
			break;
		if (raid_act->buf != NULL)
			error = FUNC6(mpt_page.vaddr, raid_act->buf,
			    raid_act->len);
		break;
	default:
		error = ENOIOCTL;
		break;
	}

	FUNC8(&mpt_page);

	if (error)
		return (error);

#ifdef __amd64__
	/* Convert native structs to 32-bit ones. */
	switch (cmd) {
	case MPTIO_READ_CFG_HEADER32:
	case MPTIO_READ_CFG_PAGE32:
	case MPTIO_WRITE_CFG_PAGE32:
		page_req32->header = page_req->header;
		page_req32->page_address = page_req->page_address;
		page_req32->buf = FUNC3(page_req->buf);
		page_req32->len = page_req->len;
		page_req32->ioc_status = page_req->ioc_status;
		break;
	case MPTIO_READ_EXT_CFG_HEADER32:
	case MPTIO_READ_EXT_CFG_PAGE32:		
		ext_page_req32->header = ext_page_req->header;
		ext_page_req32->page_address = ext_page_req->page_address;
		ext_page_req32->buf = FUNC3(ext_page_req->buf);
		ext_page_req32->len = ext_page_req->len;
		ext_page_req32->ioc_status = ext_page_req->ioc_status;
		break;
	case MPTIO_RAID_ACTION32:
		raid_act32->action = raid_act->action;
		raid_act32->volume_bus = raid_act->volume_bus;
		raid_act32->volume_id = raid_act->volume_id;
		raid_act32->phys_disk_num = raid_act->phys_disk_num;
		raid_act32->action_data_word = raid_act->action_data_word;
		raid_act32->buf = FUNC3(raid_act->buf);
		raid_act32->len = raid_act->len;
		raid_act32->volume_status = raid_act->volume_status;
		FUNC4(raid_act->action_data, raid_act32->action_data,
		    sizeof(raid_act->action_data));
		raid_act32->action_status = raid_act->action_status;
		raid_act32->ioc_status = raid_act->ioc_status;
		raid_act32->write = raid_act->write;
		break;
	}
#endif

	return (0);
}