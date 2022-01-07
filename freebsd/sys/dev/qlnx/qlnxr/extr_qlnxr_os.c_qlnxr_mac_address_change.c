
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int * ha; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*) ;

__attribute__((used)) static void
qlnxr_mac_address_change(struct qlnxr_dev *dev)
{
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter/exit\n");

 return;
}
