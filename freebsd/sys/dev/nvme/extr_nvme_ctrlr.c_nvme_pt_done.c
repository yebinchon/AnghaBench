
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int status; int cdw0; } ;
struct nvme_pt_command {struct mtx* driver_lock; TYPE_1__ cpl; } ;
struct nvme_completion {int status; int cdw0; } ;
struct mtx {int dummy; } ;


 int NVME_STATUS_P_MASK ;
 int bzero (TYPE_1__*,int) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int wakeup (struct nvme_pt_command*) ;

__attribute__((used)) static void
nvme_pt_done(void *arg, const struct nvme_completion *cpl)
{
 struct nvme_pt_command *pt = arg;
 struct mtx *mtx = pt->driver_lock;
 uint16_t status;

 bzero(&pt->cpl, sizeof(pt->cpl));
 pt->cpl.cdw0 = cpl->cdw0;

 status = cpl->status;
 status &= ~NVME_STATUS_P_MASK;
 pt->cpl.status = status;

 mtx_lock(mtx);
 pt->driver_lock = ((void*)0);
 wakeup(pt);
 mtx_unlock(mtx);
}
