
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
struct bio {struct cdev* bio_dev; } ;
struct TYPE_2__ {int (* d_strategy ) (struct bio*) ;} ;


 int ENXIO ;
 int Giant ;
 int biofinish (struct bio*,int *,int ) ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct bio*) ;

__attribute__((used)) static void
giant_strategy(struct bio *bp)
{
 struct cdevsw *dsw;
 struct cdev *dev;
 int ref;

 dev = bp->bio_dev;
 dsw = dev_refthread(dev, &ref);
 if (dsw == ((void*)0)) {
  biofinish(bp, ((void*)0), ENXIO);
  return;
 }
 mtx_lock(&Giant);
 dsw->d_gianttrick->d_strategy(bp);
 mtx_unlock(&Giant);
 dev_relthread(dev, ref);
}
