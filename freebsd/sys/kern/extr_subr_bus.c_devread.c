
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int dummy; } ;
struct dev_event_info {struct dev_event_info* dei_data; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int mtx; int queued; int devq; int cv; scalar_t__ nonblock; } ;


 int EAGAIN ;
 int M_BUS ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct dev_event_info* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct dev_event_info*,int ) ;
 int cv_wait_sig (int *,int *) ;
 int dei_link ;
 TYPE_1__ devsoftc ;
 int free (struct dev_event_info*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlen (struct dev_event_info*) ;
 int uiomove (struct dev_event_info*,int ,struct uio*) ;

__attribute__((used)) static int
devread(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct dev_event_info *n1;
 int rv;

 mtx_lock(&devsoftc.mtx);
 while (TAILQ_EMPTY(&devsoftc.devq)) {
  if (devsoftc.nonblock) {
   mtx_unlock(&devsoftc.mtx);
   return (EAGAIN);
  }
  rv = cv_wait_sig(&devsoftc.cv, &devsoftc.mtx);
  if (rv) {



   mtx_unlock(&devsoftc.mtx);
   return (rv);
  }
 }
 n1 = TAILQ_FIRST(&devsoftc.devq);
 TAILQ_REMOVE(&devsoftc.devq, n1, dei_link);
 devsoftc.queued--;
 mtx_unlock(&devsoftc.mtx);
 rv = uiomove(n1->dei_data, strlen(n1->dei_data), uio);
 free(n1->dei_data, M_BUS);
 free(n1, M_BUS);
 return (rv);
}
