
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int ha; } ;


 int QL_DPRINT12 (int ,char*,...) ;
 int qlnxr_ll2_stop (struct qlnxr_dev*) ;

int
qlnxr_destroy_gsi_qp(struct qlnxr_dev *dev)
{
 int rc = 0;

 QL_DPRINT12(dev->ha, "enter\n");

 rc = qlnxr_ll2_stop(dev);

 QL_DPRINT12(dev->ha, "exit rc = %d\n", rc);
 return (rc);
}
