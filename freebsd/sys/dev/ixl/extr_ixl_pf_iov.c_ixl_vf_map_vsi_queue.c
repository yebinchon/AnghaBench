
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int vsi_num; } ;
struct ixl_vf {TYPE_1__ vsi; } ;
struct i40e_hw {int dummy; } ;


 int I40E_VSILAN_QTABLE (int,int ) ;
 int I40E_VSILAN_QTABLE_QINDEX_0_MASK ;
 int I40E_VSILAN_QTABLE_QINDEX_1_SHIFT ;
 int i40e_read_rx_ctl (struct i40e_hw*,int ) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
ixl_vf_map_vsi_queue(struct i40e_hw *hw, struct ixl_vf *vf, int qnum,
    uint32_t val)
{
 uint32_t qtable;
 int index, shift;






 index = qnum / 2;
 shift = (qnum % 2) * I40E_VSILAN_QTABLE_QINDEX_1_SHIFT;

 qtable = i40e_read_rx_ctl(hw, I40E_VSILAN_QTABLE(index, vf->vsi.vsi_num));
 qtable &= ~(I40E_VSILAN_QTABLE_QINDEX_0_MASK << shift);
 qtable |= val << shift;
 i40e_write_rx_ctl(hw, I40E_VSILAN_QTABLE(index, vf->vsi.vsi_num), qtable);
}
