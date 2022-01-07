
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u64 ;
typedef int u32 ;
struct ixl_vsi {int num_rx_queues; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int dev; struct ixl_vsi vsi; struct i40e_hw hw; } ;


 int DDPRINTF (int ,char*,int,int) ;
 int I40E_FILTER_PCTYPE_FRAG_IPV6 ;
 int I40E_FILTER_PCTYPE_NONF_IPV4_OTHER ;
 int I40E_FILTER_PCTYPE_NONF_IPV4_TCP ;
 int I40E_FILTER_PCTYPE_NONF_IPV4_UDP ;
 int I40E_FILTER_PCTYPE_NONF_IPV6_OTHER ;
 int I40E_FILTER_PCTYPE_NONF_IPV6_TCP ;
 int I40E_FILTER_PCTYPE_NONF_IPV6_UDP ;
 int I40E_VFQF_HENA (int) ;
 int I40E_VFQF_HKEY (int) ;
 int I40E_VFQF_HLUT (int) ;
 int IXL_DEFAULT_RSS_HENA_XL710 ;
 int IXL_RSS_KEY_SIZE_REG ;
 int IXL_RSS_VF_LUT_ENTRY_MASK ;
 int IXL_RSS_VSI_LUT_SIZE ;
 int RSS_HASHTYPE_RSS_IPV4 ;
 int RSS_HASHTYPE_RSS_IPV6 ;
 int RSS_HASHTYPE_RSS_IPV6_EX ;
 int RSS_HASHTYPE_RSS_TCP_IPV4 ;
 int RSS_HASHTYPE_RSS_TCP_IPV6 ;
 int RSS_HASHTYPE_RSS_UDP_IPV4 ;
 int RSS_HASHTYPE_RSS_UDP_IPV6 ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_get_default_rss_key (int*) ;
 scalar_t__ rd32 (struct i40e_hw*,int ) ;
 int rss_get_indirection_to_bucket (int) ;
 int rss_gethashconfig () ;
 int rss_getkey (int *) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
iavf_config_rss_reg(struct iavf_sc *sc)
{
 struct i40e_hw *hw = &sc->hw;
 struct ixl_vsi *vsi = &sc->vsi;
 u32 lut = 0;
 u64 set_hena = 0, hena;
 int i, j, que_id;
 u32 rss_seed[IXL_RSS_KEY_SIZE_REG];





 if (vsi->num_rx_queues == 1) {
  wr32(hw, I40E_VFQF_HENA(0), 0);
  wr32(hw, I40E_VFQF_HENA(1), 0);
  ixl_flush(hw);
  return;
 }





 ixl_get_default_rss_key(rss_seed);



 for (i = 0; i < IXL_RSS_KEY_SIZE_REG; i++)
                wr32(hw, I40E_VFQF_HKEY(i), rss_seed[i]);
 set_hena = IXL_DEFAULT_RSS_HENA_XL710;

 hena = (u64)rd32(hw, I40E_VFQF_HENA(0)) |
     ((u64)rd32(hw, I40E_VFQF_HENA(1)) << 32);
 hena |= set_hena;
 wr32(hw, I40E_VFQF_HENA(0), (u32)hena);
 wr32(hw, I40E_VFQF_HENA(1), (u32)(hena >> 32));


 for (i = 0, j = 0; i < IXL_RSS_VSI_LUT_SIZE; i++, j++) {
                if (j == vsi->num_rx_queues)
                        j = 0;
  que_id = j;


                lut = (lut << 8) | (que_id & IXL_RSS_VF_LUT_ENTRY_MASK);

                if ((i & 3) == 3) {
                        wr32(hw, I40E_VFQF_HLUT(i >> 2), lut);
   DDPRINTF(sc->dev, "HLUT(%2d): %#010x", i, lut);
  }
        }
 ixl_flush(hw);
}
