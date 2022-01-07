
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int bitmap; } ;
struct ecore_rdma_info {int lock; TYPE_1__ toggle_bits; int proto; } ;
struct ecore_hwfn {struct ecore_rdma_info* p_rdma_info; } ;
typedef enum ecore_rdma_toggle_bit { ____Placeholder_ecore_rdma_toggle_bit } ecore_rdma_toggle_bit ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_MSG_RDMA ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int OSAL_TEST_AND_FLIP_BIT (int,int ) ;
 int ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;

__attribute__((used)) static enum ecore_rdma_toggle_bit
ecore_rdma_toggle_bit_create_resize_cq(struct ecore_hwfn *p_hwfn,
           u16 icid)
{
 struct ecore_rdma_info *p_info = p_hwfn->p_rdma_info;
 enum ecore_rdma_toggle_bit toggle_bit;
 u32 bmap_id;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", icid);




 bmap_id = icid - ecore_cxt_get_proto_cid_start(p_hwfn, p_info->proto);

 OSAL_SPIN_LOCK(&p_info->lock);
 toggle_bit = !OSAL_TEST_AND_FLIP_BIT(bmap_id, p_info->toggle_bits.bitmap);
 OSAL_SPIN_UNLOCK(&p_info->lock);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "ECORE_RDMA_TOGGLE_BIT_= %d\n",
     toggle_bit);

 return toggle_bit;
}
