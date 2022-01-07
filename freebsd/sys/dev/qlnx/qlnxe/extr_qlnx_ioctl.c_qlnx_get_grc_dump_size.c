
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_hwfns; } ;
struct TYPE_7__ {int * grcdump_size; TYPE_1__ cdev; int pci_func; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_8__ {int * grcdump_size; int pci_func; } ;
typedef TYPE_3__ qlnx_grcdump_t ;



__attribute__((used)) static void
qlnx_get_grc_dump_size(qlnx_host_t *ha, qlnx_grcdump_t *grcdump)
{
 int i;

 grcdump->pci_func = ha->pci_func;

 for (i = 0; i < ha->cdev.num_hwfns; i++)
  grcdump->grcdump_size[i] = ha->grcdump_size[i];

 return;
}
