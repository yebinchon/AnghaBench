
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_rss_hena {int hena; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_1__ mac; } ;
struct iavf_sc {struct i40e_hw hw; } ;
typedef int hena ;


 scalar_t__ I40E_MAC_X722_VF ;
 int IXL_DEFAULT_RSS_HENA_X722 ;
 int IXL_DEFAULT_RSS_HENA_XL710 ;
 int VIRTCHNL_OP_SET_RSS_HENA ;
 int iavf_send_pf_msg (struct iavf_sc*,int ,int *,int) ;

int
iavf_set_rss_hena(struct iavf_sc *sc)
{
 struct virtchnl_rss_hena hena;
 struct i40e_hw *hw = &sc->hw;

 if (hw->mac.type == I40E_MAC_X722_VF)
  hena.hena = IXL_DEFAULT_RSS_HENA_X722;
 else
  hena.hena = IXL_DEFAULT_RSS_HENA_XL710;

 iavf_send_pf_msg(sc, VIRTCHNL_OP_SET_RSS_HENA,
     (u8 *)&hena, sizeof(hena));
 return (0);
}
