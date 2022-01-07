
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int mtx; int sigio; int cv; scalar_t__ async; scalar_t__ nonblock; scalar_t__ inuse; } ;


 int cv_broadcast (int *) ;
 TYPE_1__ devsoftc ;
 int funsetown (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
devclose(struct cdev *dev, int fflag, int devtype, struct thread *td)
{

 mtx_lock(&devsoftc.mtx);
 devsoftc.inuse = 0;
 devsoftc.nonblock = 0;
 devsoftc.async = 0;
 cv_broadcast(&devsoftc.cv);
 funsetown(&devsoftc.sigio);
 mtx_unlock(&devsoftc.mtx);
 return (0);
}
