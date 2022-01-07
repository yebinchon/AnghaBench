
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_1__ mac; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int I40E_FILTER_PCTYPE_FRAG_IPV6 ;
 int I40E_FILTER_PCTYPE_NONF_IPV4_OTHER ;
 int I40E_FILTER_PCTYPE_NONF_IPV4_TCP ;
 int I40E_FILTER_PCTYPE_NONF_IPV4_UDP ;
 int I40E_FILTER_PCTYPE_NONF_IPV6_OTHER ;
 int I40E_FILTER_PCTYPE_NONF_IPV6_TCP ;
 int I40E_FILTER_PCTYPE_NONF_IPV6_UDP ;
 scalar_t__ I40E_MAC_X722 ;
 int I40E_PFQF_HENA (int) ;
 int IXL_DEFAULT_RSS_HENA_X722 ;
 int IXL_DEFAULT_RSS_HENA_XL710 ;
 int RSS_HASHTYPE_RSS_IPV4 ;
 int RSS_HASHTYPE_RSS_IPV6 ;
 int RSS_HASHTYPE_RSS_IPV6_EX ;
 int RSS_HASHTYPE_RSS_TCP_IPV4 ;
 int RSS_HASHTYPE_RSS_TCP_IPV6 ;
 int RSS_HASHTYPE_RSS_UDP_IPV4 ;
 int RSS_HASHTYPE_RSS_UDP_IPV6 ;
 scalar_t__ i40e_read_rx_ctl (struct i40e_hw*,int ) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int) ;
 int rss_gethashconfig () ;

void
ixl_set_rss_pctypes(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u64 set_hena = 0, hena;
 if (hw->mac.type == I40E_MAC_X722)
  set_hena = IXL_DEFAULT_RSS_HENA_X722;
 else
  set_hena = IXL_DEFAULT_RSS_HENA_XL710;

 hena = (u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(0)) |
     ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
 hena |= set_hena;
 i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), (u32)hena);
 i40e_write_rx_ctl(hw, I40E_PFQF_HENA(1), (u32)(hena >> 32));

}
