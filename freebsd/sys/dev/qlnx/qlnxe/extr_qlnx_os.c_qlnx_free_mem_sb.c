
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_sb_info {int * sb_virt; int sb_phys; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_3__ {struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int OSAL_DMA_FREE_COHERENT (struct ecore_dev*,void*,int ,int) ;

void
qlnx_free_mem_sb(qlnx_host_t *ha, struct ecore_sb_info *sb_info)
{
 struct ecore_dev *cdev;

 cdev = &ha->cdev;

        if (sb_info->sb_virt) {
                OSAL_DMA_FREE_COHERENT(cdev, ((void *)sb_info->sb_virt),
   (sb_info->sb_phys), (sizeof(*sb_info->sb_virt)));
  sb_info->sb_virt = ((void*)0);
 }
}
