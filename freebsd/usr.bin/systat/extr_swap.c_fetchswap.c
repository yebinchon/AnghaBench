
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct devinfo {int dummy; } ;
struct TYPE_5__ {int snap_time; struct devinfo* dinfo; } ;
struct TYPE_4__ {int snap_time; struct devinfo* dinfo; } ;


 int NSWAP ;
 int calclens () ;
 TYPE_2__ cur_dev ;
 int dlen ;
 int dsgetinfo (TYPE_2__*) ;
 int error (char*) ;
 int kd ;
 int kvm_getswapinfo (int ,int ,int ,int ) ;
 int kvmsw ;
 int kvnsw ;
 TYPE_1__ last_dev ;
 int odlen ;
 int okvnsw ;
 int oulen ;
 int ulen ;

void
fetchswap(void)
{
 okvnsw = kvnsw;
 if ((kvnsw = kvm_getswapinfo(kd, kvmsw, NSWAP, 0)) < 0) {
  error("systat: kvm_getswapinfo failed");
  return;
 }

 odlen = dlen;
 oulen = ulen;
 calclens();

 struct devinfo *tmp_dinfo;

 tmp_dinfo = last_dev.dinfo;
 last_dev.dinfo = cur_dev.dinfo;
 cur_dev.dinfo = tmp_dinfo;

 last_dev.snap_time = cur_dev.snap_time;
 dsgetinfo( &cur_dev );
}
