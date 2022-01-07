
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cuse_server_dev {struct cuse_dev* user_dev; struct cuse_server* server; } ;
struct cuse_server {scalar_t__ refs; scalar_t__ pid; scalar_t__ is_closing; int hcli; } ;
struct cuse_dev {int dummy; } ;
struct TYPE_3__ {int command; struct cuse_dev* dev; } ;
struct cuse_client_command {int cv; int sx; struct cuse_client* client; TYPE_1__ sub; } ;
struct cuse_client {int fflags; struct cuse_client_command* cmds; struct cuse_server* server; struct cuse_server_dev* server_dev; } ;
struct cdev {struct cuse_server_dev* si_drv1; } ;
struct TYPE_4__ {scalar_t__ p_pid; } ;


 int CUSE_CMD_MAX ;
 size_t CUSE_CMD_OPEN ;
 int EINVAL ;
 int ENOMEM ;
 int M_CUSE ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct cuse_client*,int ) ;
 TYPE_2__* curproc ;
 int cuse_client_free ;
 int cuse_client_receive_command_locked (struct cuse_client_command*,int ,int ) ;
 int cuse_client_send_command_locked (struct cuse_client_command*,int ,int ,int,int ) ;
 int cuse_cmd_lock (struct cuse_client_command*) ;
 int cuse_cmd_unlock (struct cuse_client_command*) ;
 int cuse_convert_error (int) ;
 int cuse_lock () ;
 int cuse_server_unref (struct cuse_server*) ;
 int cuse_unlock () ;
 int cv_init (int *,char*) ;
 int devfs_clear_cdevpriv () ;
 scalar_t__ devfs_set_cdevpriv (struct cuse_client*,int *) ;
 int entry ;
 int free (struct cuse_client*,int ) ;
 struct cuse_client* malloc (int,int ,int) ;
 int printf (char*) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
cuse_client_open(struct cdev *dev, int fflags, int devtype, struct thread *td)
{
 struct cuse_client_command *pccmd;
 struct cuse_server_dev *pcsd;
 struct cuse_client *pcc;
 struct cuse_server *pcs;
 struct cuse_dev *pcd;
 int error;
 int n;

 cuse_lock();
 pcsd = dev->si_drv1;
 if (pcsd != ((void*)0)) {
  pcs = pcsd->server;
  pcd = pcsd->user_dev;






  pcs->refs++;
  if (pcs->refs < 0 || pcs->pid == curproc->p_pid) {

   pcs->refs--;
   pcsd = ((void*)0);
  }
 } else {
  pcs = ((void*)0);
  pcd = ((void*)0);
 }
 cuse_unlock();

 if (pcsd == ((void*)0))
  return (EINVAL);

 pcc = malloc(sizeof(*pcc), M_CUSE, M_WAITOK | M_ZERO);
 if (pcc == ((void*)0)) {

  cuse_server_unref(pcs);
  return (ENOMEM);
 }
 if (devfs_set_cdevpriv(pcc, &cuse_client_free)) {
  printf("Cuse: Cannot set cdevpriv.\n");

  cuse_server_unref(pcs);
  free(pcc, M_CUSE);
  return (ENOMEM);
 }
 pcc->fflags = fflags;
 pcc->server_dev = pcsd;
 pcc->server = pcs;

 for (n = 0; n != CUSE_CMD_MAX; n++) {

  pccmd = &pcc->cmds[n];

  pccmd->sub.dev = pcd;
  pccmd->sub.command = n;
  pccmd->client = pcc;

  sx_init(&pccmd->sx, "cuse-client-sx");
  cv_init(&pccmd->cv, "cuse-client-cv");
 }

 cuse_lock();




 TAILQ_INSERT_TAIL(&pcs->hcli, pcc, entry);


 if ((pcs->is_closing != 0) || (dev->si_drv1 == ((void*)0))) {
  error = EINVAL;
 } else {
  error = 0;
 }
 cuse_unlock();

 if (error) {
  devfs_clear_cdevpriv();
  return (error);
 }
 pccmd = &pcc->cmds[CUSE_CMD_OPEN];

 cuse_cmd_lock(pccmd);

 cuse_lock();
 cuse_client_send_command_locked(pccmd, 0, 0, pcc->fflags, 0);

 error = cuse_client_receive_command_locked(pccmd, 0, 0);
 cuse_unlock();

 if (error < 0) {
  error = cuse_convert_error(error);
 } else {
  error = 0;
 }

 cuse_cmd_unlock(pccmd);

 if (error)
  devfs_clear_cdevpriv();

 return (error);
}
