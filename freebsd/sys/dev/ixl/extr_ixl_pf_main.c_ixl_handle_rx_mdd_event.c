
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixl_vf {int num_mdd_events; } ;
struct i40e_hw {int pf_id; } ;
struct ixl_pf {int num_vfs; struct ixl_vf* vfs; int dev; struct i40e_hw hw; } ;
typedef int device_t ;


 int I40E_GL_MDET_RX ;
 int I40E_GL_MDET_RX_EVENT_MASK ;
 int I40E_GL_MDET_RX_EVENT_SHIFT ;
 int I40E_GL_MDET_RX_FUNCTION_MASK ;
 int I40E_GL_MDET_RX_FUNCTION_SHIFT ;
 int I40E_GL_MDET_RX_QUEUE_MASK ;
 int I40E_GL_MDET_RX_QUEUE_SHIFT ;
 int I40E_GL_MDET_RX_VALID_MASK ;
 int I40E_PF_MDET_RX ;
 int I40E_PF_MDET_RX_VALID_MASK ;
 int I40E_VP_MDET_RX (int) ;
 int I40E_VP_MDET_RX_VALID_MASK ;
 int device_printf (int ,char*,...) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
ixl_handle_rx_mdd_event(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
 struct ixl_vf *vf;
 bool mdd_detected = 0;
 bool pf_mdd_detected = 0;
 bool vf_mdd_detected = 0;
 u16 queue;
 u8 pf_num, event;
 u8 pf_mdet_num, vp_mdet_num;
 u32 reg;





 reg = rd32(hw, I40E_GL_MDET_RX);
 if (reg & I40E_GL_MDET_RX_VALID_MASK) {
  pf_num = (reg & I40E_GL_MDET_RX_FUNCTION_MASK) >>
      I40E_GL_MDET_RX_FUNCTION_SHIFT;
  event = (reg & I40E_GL_MDET_RX_EVENT_MASK) >>
      I40E_GL_MDET_RX_EVENT_SHIFT;
  queue = (reg & I40E_GL_MDET_RX_QUEUE_MASK) >>
      I40E_GL_MDET_RX_QUEUE_SHIFT;
  wr32(hw, I40E_GL_MDET_RX, 0xffffffff);
  mdd_detected = 1;
 }

 if (!mdd_detected)
  return;

 reg = rd32(hw, I40E_PF_MDET_RX);
 if (reg & I40E_PF_MDET_RX_VALID_MASK) {
  wr32(hw, I40E_PF_MDET_RX, 0xFFFF);
  pf_mdet_num = hw->pf_id;
  pf_mdd_detected = 1;
 }


 for (int i = 0; i < pf->num_vfs; i++) {
  vf = &(pf->vfs[i]);
  reg = rd32(hw, I40E_VP_MDET_RX(i));
  if (reg & I40E_VP_MDET_RX_VALID_MASK) {
   wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
   vp_mdet_num = i;
   vf->num_mdd_events++;
   vf_mdd_detected = 1;
  }
 }


 if (vf_mdd_detected && pf_mdd_detected)
  device_printf(dev,
      "Malicious Driver Detection event %d"
      " on RX queue %d, pf number %d (PF-%d), (VF-%d)\n",
      event, queue, pf_num, pf_mdet_num, vp_mdet_num);
 else if (vf_mdd_detected && !pf_mdd_detected)
  device_printf(dev,
      "Malicious Driver Detection event %d"
      " on RX queue %d, pf number %d, (VF-%d)\n",
      event, queue, pf_num, vp_mdet_num);
 else if (!vf_mdd_detected && pf_mdd_detected)
  device_printf(dev,
      "Malicious Driver Detection event %d"
      " on RX queue %d, pf number %d (PF-%d)\n",
      event, queue, pf_num, pf_mdet_num);

 else
  device_printf(dev,
      "RX Malicious Driver Detection event (unknown)\n");
}
