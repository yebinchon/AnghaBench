
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ecore_hwfn {TYPE_3__* vf_iov_info; } ;
struct TYPE_4__ {int num_cids; } ;
struct TYPE_5__ {TYPE_1__ resc; } ;
struct TYPE_6__ {TYPE_2__ acquire_resp; } ;



void ecore_vf_get_num_cids(struct ecore_hwfn *p_hwfn,
      u8 *num_cids)
{
 *num_cids = p_hwfn->vf_iov_info->acquire_resp.resc.num_cids;
}
