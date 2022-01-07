
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mpt_softc {int dummy; } ;
struct mpt_raid_action32 {int len; int write; int ioc_status; int action_status; int action_data; int volume_status; void* buf; int action_data_word; int phys_disk_num; int volume_id; int volume_bus; int action; } ;
struct mpt_raid_action {int len; int write; int ioc_status; int action_status; int action_data; int volume_status; int * buf; int action_data_word; int phys_disk_num; int volume_id; int volume_bus; int action; } ;
struct mpt_page_memory {int * vaddr; } ;
struct mpt_ext_cfg_page_req32 {int len; int ioc_status; void* buf; int page_address; int header; } ;
struct mpt_ext_cfg_page_req {int len; int ioc_status; int * buf; int page_address; int header; } ;
struct mpt_cfg_page_req32 {int len; int ioc_status; void* buf; int page_address; int header; } ;
struct mpt_cfg_page_req {int len; int ioc_status; int * buf; int page_address; int header; } ;
struct cdev {struct mpt_softc* si_drv1; } ;
typedef scalar_t__ caddr_t ;
typedef int CONFIG_PAGE_HEADER ;
typedef int CONFIG_EXTENDED_PAGE_HEADER ;


 int ENOIOCTL ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 void* PTRIN (void*) ;
 void* PTROUT (int *) ;
 int bcopy (int ,int ,int) ;
 int copyin (int *,int *,int) ;
 int copyout (int *,int *,int) ;
 int mpt_alloc_buffer (struct mpt_softc*,struct mpt_page_memory*,int) ;
 int mpt_free_buffer (struct mpt_page_memory*) ;
 int mpt_user_raid_action (struct mpt_softc*,struct mpt_raid_action*,struct mpt_page_memory*) ;
 int mpt_user_read_cfg_header (struct mpt_softc*,struct mpt_cfg_page_req*) ;
 int mpt_user_read_cfg_page (struct mpt_softc*,struct mpt_cfg_page_req*,struct mpt_page_memory*) ;
 int mpt_user_read_extcfg_header (struct mpt_softc*,struct mpt_ext_cfg_page_req*) ;
 int mpt_user_read_extcfg_page (struct mpt_softc*,struct mpt_ext_cfg_page_req*,struct mpt_page_memory*) ;
 int mpt_user_write_cfg_page (struct mpt_softc*,struct mpt_cfg_page_req*,struct mpt_page_memory*) ;

__attribute__((used)) static int
mpt_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int flag, struct thread *td)
{
 struct mpt_softc *mpt;
 struct mpt_cfg_page_req *page_req;
 struct mpt_ext_cfg_page_req *ext_page_req;
 struct mpt_raid_action *raid_act;
 struct mpt_page_memory mpt_page;

 struct mpt_cfg_page_req32 *page_req32;
 struct mpt_cfg_page_req page_req_swab;
 struct mpt_ext_cfg_page_req32 *ext_page_req32;
 struct mpt_ext_cfg_page_req ext_page_req_swab;
 struct mpt_raid_action32 *raid_act32;
 struct mpt_raid_action raid_act_swab;

 int error;

 mpt = dev->si_drv1;
 page_req = (void *)arg;
 ext_page_req = (void *)arg;
 raid_act = (void *)arg;
 mpt_page.vaddr = ((void*)0);



 page_req32 = (void *)arg;
 ext_page_req32 = (void *)arg;
 raid_act32 = (void *)arg;
 switch (cmd) {
 case 136:
 case 134:
 case 128:
  page_req = &page_req_swab;
  page_req->header = page_req32->header;
  page_req->page_address = page_req32->page_address;
  page_req->buf = PTRIN(page_req32->buf);
  page_req->len = page_req32->len;
  page_req->ioc_status = page_req32->ioc_status;
  break;
 case 132:
 case 130:
  ext_page_req = &ext_page_req_swab;
  ext_page_req->header = ext_page_req32->header;
  ext_page_req->page_address = ext_page_req32->page_address;
  ext_page_req->buf = PTRIN(ext_page_req32->buf);
  ext_page_req->len = ext_page_req32->len;
  ext_page_req->ioc_status = ext_page_req32->ioc_status;
  break;
 case 138:
  raid_act = &raid_act_swab;
  raid_act->action = raid_act32->action;
  raid_act->volume_bus = raid_act32->volume_bus;
  raid_act->volume_id = raid_act32->volume_id;
  raid_act->phys_disk_num = raid_act32->phys_disk_num;
  raid_act->action_data_word = raid_act32->action_data_word;
  raid_act->buf = PTRIN(raid_act32->buf);
  raid_act->len = raid_act32->len;
  raid_act->volume_status = raid_act32->volume_status;
  bcopy(raid_act32->action_data, raid_act->action_data,
      sizeof(raid_act->action_data));
  raid_act->action_status = raid_act32->action_status;
  raid_act->ioc_status = raid_act32->ioc_status;
  raid_act->write = raid_act32->write;
  break;
 }


 switch (cmd) {

 case 136:

 case 137:
  MPT_LOCK(mpt);
  error = mpt_user_read_cfg_header(mpt, page_req);
  MPT_UNLOCK(mpt);
  break;

 case 134:

 case 135:
  error = mpt_alloc_buffer(mpt, &mpt_page, page_req->len);
  if (error)
   break;
  error = copyin(page_req->buf, mpt_page.vaddr,
      sizeof(CONFIG_PAGE_HEADER));
  if (error)
   break;
  MPT_LOCK(mpt);
  error = mpt_user_read_cfg_page(mpt, page_req, &mpt_page);
  MPT_UNLOCK(mpt);
  if (error)
   break;
  error = copyout(mpt_page.vaddr, page_req->buf, page_req->len);
  break;

 case 132:

 case 133:
  MPT_LOCK(mpt);
  error = mpt_user_read_extcfg_header(mpt, ext_page_req);
  MPT_UNLOCK(mpt);
  break;

 case 130:

 case 131:
  error = mpt_alloc_buffer(mpt, &mpt_page, ext_page_req->len);
  if (error)
   break;
  error = copyin(ext_page_req->buf, mpt_page.vaddr,
      sizeof(CONFIG_EXTENDED_PAGE_HEADER));
  if (error)
   break;
  MPT_LOCK(mpt);
  error = mpt_user_read_extcfg_page(mpt, ext_page_req, &mpt_page);
  MPT_UNLOCK(mpt);
  if (error)
   break;
  error = copyout(mpt_page.vaddr, ext_page_req->buf,
      ext_page_req->len);
  break;

 case 128:

 case 129:
  error = mpt_alloc_buffer(mpt, &mpt_page, page_req->len);
  if (error)
   break;
  error = copyin(page_req->buf, mpt_page.vaddr, page_req->len);
  if (error)
   break;
  MPT_LOCK(mpt);
  error = mpt_user_write_cfg_page(mpt, page_req, &mpt_page);
  MPT_UNLOCK(mpt);
  break;

 case 138:

 case 139:
  if (raid_act->buf != ((void*)0)) {
   error = mpt_alloc_buffer(mpt, &mpt_page, raid_act->len);
   if (error)
    break;
   error = copyin(raid_act->buf, mpt_page.vaddr,
       raid_act->len);
   if (error)
    break;
  }
  MPT_LOCK(mpt);
  error = mpt_user_raid_action(mpt, raid_act, &mpt_page);
  MPT_UNLOCK(mpt);
  if (error)
   break;
  if (raid_act->buf != ((void*)0))
   error = copyout(mpt_page.vaddr, raid_act->buf,
       raid_act->len);
  break;
 default:
  error = ENOIOCTL;
  break;
 }

 mpt_free_buffer(&mpt_page);

 if (error)
  return (error);



 switch (cmd) {
 case 136:
 case 134:
 case 128:
  page_req32->header = page_req->header;
  page_req32->page_address = page_req->page_address;
  page_req32->buf = PTROUT(page_req->buf);
  page_req32->len = page_req->len;
  page_req32->ioc_status = page_req->ioc_status;
  break;
 case 132:
 case 130:
  ext_page_req32->header = ext_page_req->header;
  ext_page_req32->page_address = ext_page_req->page_address;
  ext_page_req32->buf = PTROUT(ext_page_req->buf);
  ext_page_req32->len = ext_page_req->len;
  ext_page_req32->ioc_status = ext_page_req->ioc_status;
  break;
 case 138:
  raid_act32->action = raid_act->action;
  raid_act32->volume_bus = raid_act->volume_bus;
  raid_act32->volume_id = raid_act->volume_id;
  raid_act32->phys_disk_num = raid_act->phys_disk_num;
  raid_act32->action_data_word = raid_act->action_data_word;
  raid_act32->buf = PTROUT(raid_act->buf);
  raid_act32->len = raid_act->len;
  raid_act32->volume_status = raid_act->volume_status;
  bcopy(raid_act->action_data, raid_act32->action_data,
      sizeof(raid_act->action_data));
  raid_act32->action_status = raid_act->action_status;
  raid_act32->ioc_status = raid_act->ioc_status;
  raid_act32->write = raid_act->write;
  break;
 }


 return (0);
}
