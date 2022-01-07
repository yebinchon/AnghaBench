
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ecore_cxt_mngr {TYPE_1__* conn_cfg; } ;
struct ecore_cdu_iids {int per_vf_cids; int pf_cids; } ;
struct TYPE_2__ {scalar_t__ cids_per_vf; scalar_t__ cid_count; } ;


 size_t MAX_CONN_TYPES ;

__attribute__((used)) static void ecore_cxt_cdu_iids(struct ecore_cxt_mngr *p_mngr,
          struct ecore_cdu_iids *iids)
{
 u32 type;

 for (type = 0; type < MAX_CONN_TYPES; type++) {
  iids->pf_cids += p_mngr->conn_cfg[type].cid_count;
  iids->per_vf_cids += p_mngr->conn_cfg[type].cids_per_vf;
 }
}
