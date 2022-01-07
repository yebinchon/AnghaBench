
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int * ha; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;

int qlnxr_resize_cq(struct ib_cq *ibcq, int new_cnt, struct ib_udata *udata)
{
 int status = 0;
 struct qlnxr_dev *dev = get_qlnxr_dev((ibcq->device));
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter/exit\n");

 return status;
}
