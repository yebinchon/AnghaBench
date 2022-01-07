
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cuse_command {int dummy; } ;
struct TYPE_5__ {int * tqe_prev; } ;
struct cuse_server_dev {int error; int got_signal; struct cuse_dev* user_dev; TYPE_4__* kern_dev; struct cuse_server* server; struct cuse_client* client; int cv; int command; int * entered; struct cuse_command sub; TYPE_1__ entry; } ;
struct cuse_server {int hdev; int head; int is_closing; int cv; } ;
struct cuse_dev {int dummy; } ;
struct cuse_data_chunk {int peer_ptr; } ;
struct cuse_create_dev {int permissions; int * devname; int group_id; int user_id; struct cuse_dev* dev; } ;
struct cuse_client_command {int error; int got_signal; struct cuse_dev* user_dev; TYPE_4__* kern_dev; struct cuse_server* server; struct cuse_client* client; int cv; int command; int * entered; struct cuse_command sub; TYPE_1__ entry; } ;
struct cuse_client {TYPE_3__* cmds; } ;
struct cuse_alloc_info {int alloc_nr; int page_count; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_8__ {struct cuse_server_dev* si_drv1; } ;
struct TYPE_6__ {uintptr_t per_file_handle; } ;
struct TYPE_7__ {TYPE_2__ sub; } ;


 int CUSE_ALLOC_PAGES_MAX ;
 int CUSE_ALLOC_UNIT_MAX ;
 int CUSE_BUF_MAX_PTR ;
 int CUSE_BUF_MIN_PTR ;
 int CUSE_CMD_MAX ;
 int CUSE_CMD_SYNC ;
 int CUSE_ID_DEFAULT (int) ;
 int CUSE_ID_MASK ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int MAKEDEV_CHECKNAME ;
 int M_CUSE ;
 int M_WAITOK ;
 int M_ZERO ;
 int PRIV_DRIVER ;
 struct cuse_server_dev* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct cuse_server_dev*,int ) ;
 struct cuse_server_dev* TAILQ_NEXT (struct cuse_server_dev*,int ) ;
 int TAILQ_REMOVE (int *,struct cuse_server_dev*,int ) ;
 int * curthread ;
 int cuse_alloc_unit_by_id_locked (struct cuse_server*,int) ;
 int cuse_client_devsw ;
 int cuse_free_unit_by_id_locked (struct cuse_server*,int) ;
 int cuse_lock () ;
 int cuse_mtx ;
 int cuse_server_alloc_memory (struct cuse_server*,int ,int ) ;
 int cuse_server_data_copy_locked (struct cuse_server_dev*,struct cuse_data_chunk*,int) ;
 struct cuse_server_dev* cuse_server_find_command (struct cuse_server*,int *) ;
 int cuse_server_free_dev (struct cuse_server_dev*) ;
 int cuse_server_free_memory (struct cuse_server*,int ) ;
 int cuse_server_get (struct cuse_server**) ;
 int cuse_server_ioctl_copy_locked (struct cuse_server_dev*,struct cuse_data_chunk*,int) ;
 int cuse_server_wakeup_all_client_locked (struct cuse_server*) ;
 int cuse_str_filter (int *) ;
 int cuse_unlock () ;
 int cv_signal (int *) ;
 int cv_wait_sig (int *,int *) ;
 int entry ;
 int free (struct cuse_server_dev*,int ) ;
 TYPE_4__* make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*,int *) ;
 struct cuse_server_dev* malloc (int,int ,int) ;
 int priv_check (int *,int ) ;

__attribute__((used)) static int
cuse_server_ioctl(struct cdev *dev, unsigned long cmd,
    caddr_t data, int fflag, struct thread *td)
{
 struct cuse_server *pcs;
 int error;

 error = cuse_server_get(&pcs);
 if (error != 0)
  return (error);

 switch (cmd) {
  struct cuse_client_command *pccmd;
  struct cuse_client *pcc;
  struct cuse_command *pcmd;
  struct cuse_alloc_info *pai;
  struct cuse_create_dev *pcd;
  struct cuse_server_dev *pcsd;
  struct cuse_data_chunk *pchk;
  int n;

 case 134:
  pcmd = (void *)data;

  cuse_lock();

  while ((pccmd = TAILQ_FIRST(&pcs->head)) == ((void*)0)) {
   error = cv_wait_sig(&pcs->cv, &cuse_mtx);

   if (pcs->is_closing)
    error = ENXIO;

   if (error) {
    cuse_unlock();
    return (error);
   }
  }

  TAILQ_REMOVE(&pcs->head, pccmd, entry);
  pccmd->entry.tqe_prev = ((void*)0);

  pccmd->entered = curthread;

  *pcmd = pccmd->sub;

  cuse_unlock();

  break;

 case 129:

  cuse_lock();
  while ((pccmd = cuse_server_find_command(pcs, curthread)) != ((void*)0)) {


   pccmd->entered = ((void*)0);
   pccmd->error = *(int *)data;
   pccmd->command = CUSE_CMD_SYNC;


   cv_signal(&pccmd->cv);
  }
  cuse_unlock();

  break;

 case 141:

  cuse_lock();
  n = cuse_alloc_unit_by_id_locked(pcs,
      CUSE_ID_DEFAULT(0));
  cuse_unlock();

  if (n < 0)
   error = ENOMEM;
  else
   *(int *)data = n;
  break;

 case 140:

  n = *(int *)data;

  n = (n & CUSE_ID_MASK);

  cuse_lock();
  n = cuse_alloc_unit_by_id_locked(pcs, n);
  cuse_unlock();

  if (n < 0)
   error = ENOMEM;
  else
   *(int *)data = n;
  break;

 case 136:

  n = *(int *)data;

  n = CUSE_ID_DEFAULT(n);

  cuse_lock();
  error = cuse_free_unit_by_id_locked(pcs, n);
  cuse_unlock();
  break;

 case 135:

  n = *(int *)data;

  cuse_lock();
  error = cuse_free_unit_by_id_locked(pcs, n);
  cuse_unlock();
  break;

 case 142:

  pai = (void *)data;

  if (pai->alloc_nr >= CUSE_ALLOC_UNIT_MAX) {
   error = ENOMEM;
   break;
  }
  if (pai->page_count >= CUSE_ALLOC_PAGES_MAX) {
   error = ENOMEM;
   break;
  }
  error = cuse_server_alloc_memory(pcs,
      pai->alloc_nr, pai->page_count);
  break;

 case 137:
  pai = (void *)data;

  if (pai->alloc_nr >= CUSE_ALLOC_UNIT_MAX) {
   error = ENOMEM;
   break;
  }
  error = cuse_server_free_memory(pcs, pai->alloc_nr);
  break;

 case 133:

  cuse_lock();
  pccmd = cuse_server_find_command(pcs, curthread);

  if (pccmd != ((void*)0)) {
   n = pccmd->got_signal;
   pccmd->got_signal = 0;
  } else {
   n = 0;
  }
  cuse_unlock();

  *(int *)data = n;

  break;

 case 130:

  cuse_lock();
  pccmd = cuse_server_find_command(pcs, curthread);

  if (pccmd != ((void*)0)) {
   pcc = pccmd->client;
   for (n = 0; n != CUSE_CMD_MAX; n++) {
    pcc->cmds[n].sub.per_file_handle = *(uintptr_t *)data;
   }
  } else {
   error = ENXIO;
  }
  cuse_unlock();
  break;

 case 139:

  error = priv_check(curthread, PRIV_DRIVER);
  if (error)
   break;

  pcd = (void *)data;



  pcd->devname[sizeof(pcd->devname) - 1] = 0;

  if (pcd->devname[0] == 0) {
   error = EINVAL;
   break;
  }
  cuse_str_filter(pcd->devname);

  pcd->permissions &= 0777;



  pcsd = malloc(sizeof(*pcsd), M_CUSE, M_WAITOK | M_ZERO);

  if (pcsd == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  pcsd->server = pcs;

  pcsd->user_dev = pcd->dev;

  pcsd->kern_dev = make_dev_credf(MAKEDEV_CHECKNAME,
      &cuse_client_devsw, 0, ((void*)0), pcd->user_id, pcd->group_id,
      pcd->permissions, "%s", pcd->devname);

  if (pcsd->kern_dev == ((void*)0)) {
   free(pcsd, M_CUSE);
   error = ENOMEM;
   break;
  }
  pcsd->kern_dev->si_drv1 = pcsd;

  cuse_lock();
  TAILQ_INSERT_TAIL(&pcs->hdev, pcsd, entry);
  cuse_unlock();

  break;

 case 138:

  error = priv_check(curthread, PRIV_DRIVER);
  if (error)
   break;

  cuse_lock();

  error = EINVAL;

  pcsd = TAILQ_FIRST(&pcs->hdev);
  while (pcsd != ((void*)0)) {
   if (pcsd->user_dev == *(struct cuse_dev **)data) {
    TAILQ_REMOVE(&pcs->hdev, pcsd, entry);
    cuse_unlock();
    cuse_server_free_dev(pcsd);
    cuse_lock();
    error = 0;
    pcsd = TAILQ_FIRST(&pcs->hdev);
   } else {
    pcsd = TAILQ_NEXT(pcsd, entry);
   }
  }

  cuse_unlock();
  break;

 case 128:
 case 132:

  cuse_lock();
  pchk = (struct cuse_data_chunk *)data;

  pccmd = cuse_server_find_command(pcs, curthread);

  if (pccmd == ((void*)0)) {
   error = ENXIO;
  } else if (pchk->peer_ptr < CUSE_BUF_MIN_PTR) {
   error = EFAULT;
  } else if (pchk->peer_ptr < CUSE_BUF_MAX_PTR) {
   error = cuse_server_ioctl_copy_locked(pccmd,
       pchk, cmd == 132);
  } else {
   error = cuse_server_data_copy_locked(pccmd,
       pchk, cmd == 132);
  }
  cuse_unlock();
  break;

 case 131:
  cuse_lock();




  cuse_server_wakeup_all_client_locked(pcs);
  cuse_unlock();
  break;

 default:
  error = ENXIO;
  break;
 }
 return (error);
}
