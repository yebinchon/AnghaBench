
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int proto; } ;


 int ECORE_ELEM_CXT ;
 int ECORE_ELEM_SRQ ;
 int ECORE_ELEM_TASK ;
 int OSAL_NULL ;
 int PROTOCOLID_ROCE ;
 int ecore_cxt_free_ilt_range (struct ecore_hwfn*,int ,int ,int ) ;
 int ecore_cxt_get_proto_cid_count (struct ecore_hwfn*,int ,int ) ;
 int ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;
 int ecore_cxt_get_proto_tid_count (struct ecore_hwfn*,int ) ;
 int ecore_cxt_get_srq_count (struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_rdma_free_ilt(struct ecore_hwfn *p_hwfn)
{

 ecore_cxt_free_ilt_range(
  p_hwfn, ECORE_ELEM_CXT,
  ecore_cxt_get_proto_cid_start(p_hwfn,
           p_hwfn->p_rdma_info->proto),
  ecore_cxt_get_proto_cid_count(p_hwfn,
           p_hwfn->p_rdma_info->proto,
           OSAL_NULL));




 ecore_cxt_free_ilt_range(p_hwfn, ECORE_ELEM_TASK, 0,
     ecore_cxt_get_proto_tid_count(
      p_hwfn, PROTOCOLID_ROCE));


 ecore_cxt_free_ilt_range(p_hwfn, ECORE_ELEM_SRQ, 0,
     ecore_cxt_get_srq_count(p_hwfn));
}
