
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int num_hwfns; } ;
struct TYPE_9__ {scalar_t__* grcdump_size; scalar_t__ grcdump_taken; scalar_t__* grcdump_dwords; int ** grcdump; TYPE_1__ cdev; int pci_func; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_10__ {scalar_t__* grcdump_size; int ** grcdump; int * grcdump_dwords; int pci_func; } ;
typedef TYPE_3__ qlnx_grcdump_t ;


 int EINVAL ;
 int QL_DPRINT1 (TYPE_2__*,char*,int,int ) ;
 int copyout (int *,int *,scalar_t__) ;
 int qlnx_grc_dump (TYPE_2__*,int *,int) ;

__attribute__((used)) static int
qlnx_get_grc_dump(qlnx_host_t *ha, qlnx_grcdump_t *grcdump)
{
 int i;
 int rval = 0;
 uint32_t dwords = 0;

 grcdump->pci_func = ha->pci_func;

 for (i = 0; i < ha->cdev.num_hwfns; i++) {

  if ((ha->grcdump[i] == ((void*)0)) || (grcdump->grcdump[i] == ((void*)0)) ||
   (grcdump->grcdump_size[i] < ha->grcdump_size[i]))
   return (EINVAL);

  rval = qlnx_grc_dump(ha, &dwords, i);

  if (rval)
   break;

  grcdump->grcdump_dwords[i] = dwords;

  QL_DPRINT1(ha,"grcdump_dwords[%d] = 0x%x\n", i, dwords);

  rval = copyout(ha->grcdump[i], grcdump->grcdump[i],
    ha->grcdump_size[i]);

  if (rval)
   break;

  ha->grcdump_dwords[i] = 0;
 }

 ha->grcdump_taken = 0;

 return (rval);
}
