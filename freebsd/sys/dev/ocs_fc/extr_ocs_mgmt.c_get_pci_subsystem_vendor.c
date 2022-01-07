
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_3__ {int pci_subsystem_vendor; } ;
typedef TYPE_1__ ocs_t ;


 int MGMT_MODE_RD ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;

__attribute__((used)) static void
get_pci_subsystem_vendor(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{

 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "pci_subsystem_vendor", "0x%04x", ocs->pci_subsystem_vendor);
}
