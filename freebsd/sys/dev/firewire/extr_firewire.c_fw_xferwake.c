
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtx {int dummy; } ;
struct fw_xfer {int flag; TYPE_1__* fc; } ;
struct TYPE_2__ {struct mtx wait_lock; } ;


 int FWXF_WAKE ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int wakeup (struct fw_xfer*) ;

void
fw_xferwake(struct fw_xfer *xfer)
{
 struct mtx *lock = &xfer->fc->wait_lock;

 mtx_lock(lock);
 xfer->flag |= FWXF_WAKE;
 mtx_unlock(lock);

 wakeup(xfer);
 return;
}
