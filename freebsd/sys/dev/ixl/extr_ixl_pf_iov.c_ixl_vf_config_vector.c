
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct virtchnl_vector_map {int rxq_map; int txq_map; int vector_id; } ;
struct ixl_vf {int vf_num; int qtag; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef enum i40e_queue_type { ____Placeholder_i40e_queue_type } i40e_queue_type ;


 int I40E_QUEUE_TYPE_RX ;
 int I40E_QUEUE_TYPE_TX ;
 int I40E_VPINT_LNKLST0 (int ) ;
 int I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT ;
 int I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT ;
 int IXL_END_OF_INTR_LNKLST ;
 int IXL_VPINT_LNKLSTN_REG (struct i40e_hw*,int ,int ) ;
 int ffs (int) ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_pf_qidx_from_vsi_qidx (int *,int) ;
 int ixl_vf_set_qctl (struct ixl_pf*,struct virtchnl_vector_map const*,int,int,int*,int*) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
ixl_vf_config_vector(struct ixl_pf *pf, struct ixl_vf *vf,
    const struct virtchnl_vector_map *vector)
{
 struct i40e_hw *hw;
 u_int qindex;
 enum i40e_queue_type type, last_type;
 uint32_t lnklst_reg;
 uint16_t rxq_map, txq_map, cur_queue, last_queue;

 hw = &pf->hw;

 rxq_map = vector->rxq_map;
 txq_map = vector->txq_map;

 last_queue = IXL_END_OF_INTR_LNKLST;
 last_type = I40E_QUEUE_TYPE_RX;






 while ((rxq_map != 0) || (txq_map != 0)) {
  if (txq_map != 0) {
   qindex = ffs(txq_map) - 1;
   type = I40E_QUEUE_TYPE_TX;
   cur_queue = ixl_pf_qidx_from_vsi_qidx(&vf->qtag, qindex);
   ixl_vf_set_qctl(pf, vector, type, cur_queue,
       &last_type, &last_queue);
   txq_map &= ~(1 << qindex);
  }

  if (rxq_map != 0) {
   qindex = ffs(rxq_map) - 1;
   type = I40E_QUEUE_TYPE_RX;
   cur_queue = ixl_pf_qidx_from_vsi_qidx(&vf->qtag, qindex);
   ixl_vf_set_qctl(pf, vector, type, cur_queue,
       &last_type, &last_queue);
   rxq_map &= ~(1 << qindex);
  }
 }

 if (vector->vector_id == 0)
  lnklst_reg = I40E_VPINT_LNKLST0(vf->vf_num);
 else
  lnklst_reg = IXL_VPINT_LNKLSTN_REG(hw, vector->vector_id,
      vf->vf_num);
 wr32(hw, lnklst_reg,
     (last_queue << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT) |
     (last_type << I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT));

 ixl_flush(hw);
}
