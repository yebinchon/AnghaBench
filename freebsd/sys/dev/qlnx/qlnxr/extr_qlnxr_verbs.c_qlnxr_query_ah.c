
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int * ha; } ;
struct ib_ah_attr {int dummy; } ;
struct ib_ah {int device; } ;
typedef int qlnx_host_t ;


 int EINVAL ;
 int QL_DPRINT12 (int *,char*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;

int
qlnxr_query_ah(struct ib_ah *ibah, struct ib_ah_attr *attr)
{
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;

 dev = get_qlnxr_dev((ibah->device));
 ha = dev->ha;
 QL_DPRINT12(ha, "Query AH not supported\n");
 return -EINVAL;
}
