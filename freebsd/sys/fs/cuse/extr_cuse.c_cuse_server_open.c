
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_3__ {int si_note; } ;
struct cuse_server {int refs; TYPE_1__ selinfo; int cv; int hmem; int hcli; int hdev; int head; int pid; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {int p_pid; } ;


 int ENOMEM ;
 int M_CUSE ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct cuse_server*,int ) ;
 TYPE_2__* curproc ;
 int cuse_lock () ;
 int cuse_mtx ;
 int cuse_server_free ;
 int cuse_server_head ;
 int cuse_unlock () ;
 int cv_init (int *,char*) ;
 scalar_t__ devfs_set_cdevpriv (struct cuse_server*,int *) ;
 int entry ;
 int free (struct cuse_server*,int ) ;
 int knlist_init_mtx (int *,int *) ;
 struct cuse_server* malloc (int,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
cuse_server_open(struct cdev *dev, int fflags, int devtype, struct thread *td)
{
 struct cuse_server *pcs;

 pcs = malloc(sizeof(*pcs), M_CUSE, M_WAITOK | M_ZERO);
 if (pcs == ((void*)0))
  return (ENOMEM);

 if (devfs_set_cdevpriv(pcs, &cuse_server_free)) {
  printf("Cuse: Cannot set cdevpriv.\n");
  free(pcs, M_CUSE);
  return (ENOMEM);
 }

 pcs->pid = curproc->p_pid;

 TAILQ_INIT(&pcs->head);
 TAILQ_INIT(&pcs->hdev);
 TAILQ_INIT(&pcs->hcli);
 TAILQ_INIT(&pcs->hmem);

 cv_init(&pcs->cv, "cuse-server-cv");

 knlist_init_mtx(&pcs->selinfo.si_note, &cuse_mtx);

 cuse_lock();
 pcs->refs++;
 TAILQ_INSERT_TAIL(&cuse_server_head, pcs, entry);
 cuse_unlock();

 return (0);
}
