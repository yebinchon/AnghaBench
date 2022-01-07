
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int * ha; } ;
struct qlnxr_ah {int dummy; } ;
struct ib_ah {int device; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*) ;
 struct qlnxr_ah* get_qlnxr_ah (struct ib_ah*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 int kfree (struct qlnxr_ah*) ;

int
qlnxr_destroy_ah(struct ib_ah *ibah)
{
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;
 struct qlnxr_ah *ah = get_qlnxr_ah(ibah);

 dev = get_qlnxr_dev((ibah->device));
 ha = dev->ha;

 QL_DPRINT12(ha, "in destroy_ah\n");

 kfree(ah);
 return 0;
}
