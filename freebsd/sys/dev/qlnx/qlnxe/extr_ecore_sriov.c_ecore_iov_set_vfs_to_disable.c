
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct ecore_dev {TYPE_1__* p_iov_info; } ;
struct TYPE_2__ {scalar_t__ total_vfs; } ;


 int IS_ECORE_SRIOV (struct ecore_dev*) ;
 int ecore_iov_set_vf_to_disable (struct ecore_dev*,scalar_t__,int ) ;

void ecore_iov_set_vfs_to_disable(struct ecore_dev *p_dev,
      u8 to_disable)
{
 u16 i;

 if (!IS_ECORE_SRIOV(p_dev))
  return;

 for (i = 0; i < p_dev->p_iov_info->total_vfs; i++)
  ecore_iov_set_vf_to_disable(p_dev, i, to_disable);
}
