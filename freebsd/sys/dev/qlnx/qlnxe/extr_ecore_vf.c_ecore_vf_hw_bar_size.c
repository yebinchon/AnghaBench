
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_3__* vf_iov_info; } ;
typedef enum BAR_ID { ____Placeholder_BAR_ID } BAR_ID ;
struct TYPE_4__ {int bar_size; } ;
struct TYPE_5__ {TYPE_1__ pfdev_info; } ;
struct TYPE_6__ {TYPE_2__ acquire_resp; } ;


 int BAR_ID_0 ;

u32 ecore_vf_hw_bar_size(struct ecore_hwfn *p_hwfn,
    enum BAR_ID bar_id)
{
 u32 bar_size;


 if (bar_id == BAR_ID_0)
  return 1 << 17;


 bar_size = p_hwfn->vf_iov_info->acquire_resp.pfdev_info.bar_size;
 if (bar_size)
  return 1 << bar_size;
 return 0;
}
