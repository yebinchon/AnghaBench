
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlnxr_dev {int * ha; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*) ;

void
qlnxr_unaffiliated_event(void *context, u8 e_code)
{
        struct qlnxr_dev *dev = (struct qlnxr_dev *)context;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter/exit \n");
 return;
}
