
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_tx_queues; int vsi_num; } ;
struct ixl_vf {int qtag; TYPE_1__ vsi; int vf_num; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int I40E_VPLAN_MAPENA (int ) ;
 int I40E_VPLAN_MAPENA_TXRX_ENA_MASK ;
 int I40E_VPLAN_QTABLE (int,int ) ;
 int I40E_VPLAN_QTABLE_QINDEX_MASK ;
 int I40E_VPLAN_QTABLE_QINDEX_SHIFT ;
 int I40E_VSILAN_QBASE (int ) ;
 int I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK ;
 int I40E_VSILAN_QTABLE_QINDEX_0_MASK ;
 int IXL_MAX_VSI_QUEUES ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int ) ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_pf_qidx_from_vsi_qidx (int *,int) ;
 int ixl_vf_map_vsi_queue (struct i40e_hw*,struct ixl_vf*,int,int) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
ixl_vf_map_queues(struct ixl_pf *pf, struct ixl_vf *vf)
{
 struct i40e_hw *hw;
 uint32_t qtable;
 int i;

 hw = &pf->hw;





 i40e_write_rx_ctl(hw, I40E_VSILAN_QBASE(vf->vsi.vsi_num),
      I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK);


 wr32(hw, I40E_VPLAN_MAPENA(vf->vf_num),
     I40E_VPLAN_MAPENA_TXRX_ENA_MASK);



 for (i = 0; i < vf->vsi.num_tx_queues; i++) {
  qtable = ixl_pf_qidx_from_vsi_qidx(&vf->qtag, i) <<
      I40E_VPLAN_QTABLE_QINDEX_SHIFT;

  wr32(hw, I40E_VPLAN_QTABLE(i, vf->vf_num), qtable);
 }
 for (; i < IXL_MAX_VSI_QUEUES; i++)
  wr32(hw, I40E_VPLAN_QTABLE(i, vf->vf_num),
      I40E_VPLAN_QTABLE_QINDEX_MASK);




 for (i = 0; i < vf->vsi.num_tx_queues; i++)
  ixl_vf_map_vsi_queue(hw, vf, i,
      ixl_pf_qidx_from_vsi_qidx(&vf->qtag, i));


 for (; i < IXL_MAX_VSI_QUEUES; i++)
  ixl_vf_map_vsi_queue(hw, vf, i,
      I40E_VSILAN_QTABLE_QINDEX_0_MASK);

 ixl_flush(hw);
}
