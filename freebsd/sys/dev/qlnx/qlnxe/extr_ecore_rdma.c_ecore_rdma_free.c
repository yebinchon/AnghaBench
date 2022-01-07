
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_MSG_RDMA ;
 int ecore_rdma_free_ilt (struct ecore_hwfn*) ;
 int ecore_rdma_free_reserved_lkey (struct ecore_hwfn*) ;
 int ecore_rdma_resc_free (struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_rdma_free(struct ecore_hwfn *p_hwfn)
{
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "\n");

 ecore_rdma_free_reserved_lkey(p_hwfn);

 ecore_rdma_resc_free(p_hwfn);

 ecore_rdma_free_ilt(p_hwfn);
}
