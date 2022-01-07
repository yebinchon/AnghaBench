
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {struct ifnet* ifp; } ;
struct TYPE_5__ {int req_fec_info; int fec_info; int an_info; int link_speed; } ;
struct TYPE_6__ {TYPE_2__ link_info; } ;
struct i40e_hw {TYPE_3__ phy; } ;
struct ixl_pf {TYPE_1__ vsi; struct i40e_hw hw; } ;
struct ifnet {int if_xname; } ;


 int I40E_AQ_AN_COMPLETED ;
 int I40E_AQ_CONFIG_FEC_KR_ENA ;
 int I40E_AQ_CONFIG_FEC_RS_ENA ;
 int I40E_AQ_LINK_PAUSE_RX ;
 int I40E_AQ_LINK_PAUSE_TX ;
 int I40E_AQ_REQUEST_FEC_KR ;
 int I40E_AQ_REQUEST_FEC_RS ;
 int LOG_NOTICE ;
 int ixl_aq_speed_to_str (int ) ;
 int * ixl_fc_string ;
 char** ixl_fec_string ;
 int log (int ,char*,int ,int ,char*,char*,char*,int ) ;

void
ixl_link_up_msg(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 struct ifnet *ifp = pf->vsi.ifp;
 char *req_fec_string, *neg_fec_string;
 u8 fec_abilities;

 fec_abilities = hw->phy.link_info.req_fec_info;

 if (fec_abilities & I40E_AQ_REQUEST_FEC_RS)
  req_fec_string = ixl_fec_string[0];
 else if (fec_abilities & I40E_AQ_REQUEST_FEC_KR)
  req_fec_string = ixl_fec_string[1];
 else
  req_fec_string = ixl_fec_string[2];

 if (hw->phy.link_info.fec_info & I40E_AQ_CONFIG_FEC_RS_ENA)
  neg_fec_string = ixl_fec_string[0];
 else if (hw->phy.link_info.fec_info & I40E_AQ_CONFIG_FEC_KR_ENA)
  neg_fec_string = ixl_fec_string[1];
 else
  neg_fec_string = ixl_fec_string[2];

 log(LOG_NOTICE, "%s: Link is up, %s Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
     ifp->if_xname,
     ixl_aq_speed_to_str(hw->phy.link_info.link_speed),
     req_fec_string, neg_fec_string,
     (hw->phy.link_info.an_info & I40E_AQ_AN_COMPLETED) ? "True" : "False",
     (hw->phy.link_info.an_info & I40E_AQ_LINK_PAUSE_TX &&
         hw->phy.link_info.an_info & I40E_AQ_LINK_PAUSE_RX) ?
  ixl_fc_string[3] : (hw->phy.link_info.an_info & I40E_AQ_LINK_PAUSE_TX) ?
  ixl_fc_string[2] : (hw->phy.link_info.an_info & I40E_AQ_LINK_PAUSE_RX) ?
  ixl_fc_string[1] : ixl_fc_string[0]);
}
