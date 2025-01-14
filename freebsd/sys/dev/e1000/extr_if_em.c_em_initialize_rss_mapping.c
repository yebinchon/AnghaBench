
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct e1000_hw {int dummy; } ;
struct adapter {int rx_num_queues; struct e1000_hw hw; } ;
typedef int rss_key ;
typedef int reta ;


 int E1000_MRQC ;
 int E1000_MRQC_RSS_ENABLE_2Q ;
 int E1000_MRQC_RSS_FIELD_IPV4 ;
 int E1000_MRQC_RSS_FIELD_IPV4_TCP ;
 int E1000_MRQC_RSS_FIELD_IPV6 ;
 int E1000_MRQC_RSS_FIELD_IPV6_EX ;
 int E1000_MRQC_RSS_FIELD_IPV6_TCP_EX ;
 int E1000_RETA (int) ;
 int E1000_RSSRK (int) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int EM_RSSRK_VAL (int *,int) ;
 int RSSKEYLEN ;
 int arc4rand (int *,int,int ) ;

__attribute__((used)) static void
em_initialize_rss_mapping(struct adapter *adapter)
{
 uint8_t rss_key[4 * RSSKEYLEN];
 uint32_t reta = 0;
 struct e1000_hw *hw = &adapter->hw;
 int i;




 arc4rand(rss_key, sizeof(rss_key), 0);
 for (i = 0; i < RSSKEYLEN; ++i) {
  uint32_t rssrk = 0;

  rssrk = EM_RSSRK_VAL(rss_key, i);
  E1000_WRITE_REG(hw,E1000_RSSRK(i), rssrk);
 }





 for (i = 0; i < sizeof(reta); ++i) {
  uint32_t q;

  q = (i % adapter->rx_num_queues) << 7;
  reta |= q << (8 * i);
 }

 for (i = 0; i < 32; ++i)
  E1000_WRITE_REG(hw, E1000_RETA(i), reta);

 E1000_WRITE_REG(hw, E1000_MRQC, E1000_MRQC_RSS_ENABLE_2Q |
   E1000_MRQC_RSS_FIELD_IPV4_TCP |
   E1000_MRQC_RSS_FIELD_IPV4 |
   E1000_MRQC_RSS_FIELD_IPV6_TCP_EX |
   E1000_MRQC_RSS_FIELD_IPV6_EX |
   E1000_MRQC_RSS_FIELD_IPV6);
}
