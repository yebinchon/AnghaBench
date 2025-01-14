
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct qlnx_link_output {int autoneg; int duplex; int speed; int advertised_caps; int supported_caps; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_7__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_8__ {int pci_func; TYPE_1__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_9__ {int port; int autoneg; int duplex; int speed; int advertising; int supported; } ;
typedef TYPE_3__ qlnx_dev_setting_t ;


 int qlnx_fill_link (TYPE_2__*,struct ecore_hwfn*,struct qlnx_link_output*) ;

__attribute__((used)) static int
qlnx_dev_settings(qlnx_host_t *ha, qlnx_dev_setting_t *dev_info)
{
 struct ecore_hwfn *p_hwfn;
 struct qlnx_link_output if_link;

 p_hwfn = &ha->cdev.hwfns[0];

 qlnx_fill_link(ha, p_hwfn, &if_link);

 dev_info->supported = if_link.supported_caps;
 dev_info->advertising = if_link.advertised_caps;
 dev_info->speed = if_link.speed;
 dev_info->duplex = if_link.duplex;
 dev_info->port = ha->pci_func & 0x1;
 dev_info->autoneg = if_link.autoneg;

 return (0);
}
