
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u32 ;
struct virtchnl_rss_hena {int hena; } ;
struct ixl_vf {int vf_num; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int dev; struct i40e_hw hw; } ;


 int DDPRINTF (int ,char*,int ,int) ;
 int I40E_ERR_PARAM ;
 int I40E_VFQF_HENA1 (int,int ) ;
 int VIRTCHNL_OP_SET_RSS_HENA ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int ) ;
 int ixl_send_vf_ack (struct ixl_pf*,struct ixl_vf*,int ) ;

__attribute__((used)) static void
ixl_vf_set_rss_hena_msg(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
 struct i40e_hw *hw;
 struct virtchnl_rss_hena *hena;

 hw = &pf->hw;

 if (msg_size < sizeof(*hena)) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_SET_RSS_HENA,
      I40E_ERR_PARAM);
  return;
 }

 hena = msg;


 i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(0, vf->vf_num), (u32)hena->hena);
 i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(1, vf->vf_num), (u32)(hena->hena >> 32));

 DDPRINTF(pf->dev, "VF %d: Programmed HENA with 0x%016lx",
     vf->vf_num, hena->hena);

 ixl_send_vf_ack(pf, vf, VIRTCHNL_OP_SET_RSS_HENA);
}
