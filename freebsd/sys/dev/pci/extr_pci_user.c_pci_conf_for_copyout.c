
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int pc_func; int pc_dev; int pc_bus; } ;
struct TYPE_12__ {int pd_unit; int pd_name; int pc_revid; int pc_progif; int pc_subclass; int pc_class; int pc_device; int pc_vendor; int pc_subdevice; int pc_subvendor; int pc_hdr; TYPE_4__ pc_sel; } ;
struct TYPE_8__ {int pc_func; int pc_dev; int pc_bus; } ;
struct TYPE_9__ {void* pd_unit; int pd_name; int pc_revid; int pc_progif; int pc_subclass; int pc_class; int pc_device; int pc_vendor; int pc_subdevice; int pc_subvendor; int pc_hdr; TYPE_2__ pc_sel; } ;
struct TYPE_11__ {int pc_func; int pc_dev; int pc_bus; } ;
struct TYPE_7__ {void* pd_unit; int pd_name; int pc_revid; int pc_progif; int pc_subclass; int pc_class; int pc_device; int pc_vendor; int pc_subdevice; int pc_subvendor; int pc_hdr; TYPE_5__ pc_sel; } ;
struct pci_conf {int pd_unit; int pd_name; int pc_revid; int pc_progif; int pc_subclass; int pc_class; int pc_device; int pc_vendor; int pc_subdevice; int pc_subvendor; int pc_hdr; TYPE_5__ pc_sel; } ;
union pci_conf_union {TYPE_6__ pco; TYPE_3__ pco32; TYPE_1__ pc32; struct pci_conf pc; } ;
typedef void* uint32_t ;
typedef int u_long ;






 int memset (union pci_conf_union*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
pci_conf_for_copyout(const struct pci_conf *pcp, union pci_conf_union *pcup,
    u_long cmd)
{

 memset(pcup, 0, sizeof(*pcup));

 switch (cmd) {
 case 131:
  pcup->pc = *pcp;
  return;
 default:

  return;
 }
}
