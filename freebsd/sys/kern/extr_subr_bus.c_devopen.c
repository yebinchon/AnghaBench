
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int inuse; int mtx; } ;


 int EBUSY ;
 TYPE_1__ devsoftc ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
devopen(struct cdev *dev, int oflags, int devtype, struct thread *td)
{

 mtx_lock(&devsoftc.mtx);
 if (devsoftc.inuse) {
  mtx_unlock(&devsoftc.mtx);
  return (EBUSY);
 }

 devsoftc.inuse = 1;
 mtx_unlock(&devsoftc.mtx);
 return (0);
}
