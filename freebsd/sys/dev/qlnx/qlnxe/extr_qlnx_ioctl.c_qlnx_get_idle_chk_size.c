
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * idle_chk_size; int pci_func; } ;
typedef TYPE_2__ qlnx_idle_chk_t ;
struct TYPE_6__ {int num_hwfns; } ;
struct TYPE_8__ {int * idle_chk_size; TYPE_1__ cdev; int pci_func; } ;
typedef TYPE_3__ qlnx_host_t ;



__attribute__((used)) static void
qlnx_get_idle_chk_size(qlnx_host_t *ha, qlnx_idle_chk_t *idle_chk)
{
 int i;

 idle_chk->pci_func = ha->pci_func;

 for (i = 0; i < ha->cdev.num_hwfns; i++)
  idle_chk->idle_chk_size[i] = ha->idle_chk_size[i];

 return;
}
