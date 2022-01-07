
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct adapter {int rx_num_queues; struct e1000_hw hw; } ;
typedef int rss_key ;


 int E1000_MRQC ;
 int E1000_MRQC_ENABLE_RSS_8Q ;
 int E1000_MRQC_RSS_FIELD_IPV4 ;
 int E1000_MRQC_RSS_FIELD_IPV4_TCP ;
 int E1000_MRQC_RSS_FIELD_IPV4_UDP ;
 int E1000_MRQC_RSS_FIELD_IPV6 ;
 int E1000_MRQC_RSS_FIELD_IPV6_TCP ;
 int E1000_MRQC_RSS_FIELD_IPV6_TCP_EX ;
 int E1000_MRQC_RSS_FIELD_IPV6_UDP ;
 int E1000_MRQC_RSS_FIELD_IPV6_UDP_EX ;
 int E1000_RETA (int) ;
 int E1000_RSSRK (int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int) ;
 int arc4rand (int**,int,int ) ;
 scalar_t__ e1000_82575 ;
 int rss_get_indirection_to_bucket (int) ;
 int rss_getkey (int *) ;

__attribute__((used)) static void
igb_initialize_rss_mapping(struct adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 int i;
 int queue_id;
 u32 reta;
 u32 rss_key[10], mrqc, shift = 0;


 if (adapter->hw.mac.type == e1000_82575)
  shift = 6;
 reta = 0;
 for (i = 0; i < 128; i++) {
  queue_id = (i % adapter->rx_num_queues);


  queue_id = queue_id << shift;





  reta = reta >> 8;
  reta = reta | ( ((uint32_t) queue_id) << 24);
  if ((i & 3) == 3) {
   E1000_WRITE_REG(hw, E1000_RETA(i >> 2), reta);
   reta = 0;
  }
 }







 mrqc = E1000_MRQC_ENABLE_RSS_8Q;





 arc4rand(&rss_key, sizeof(rss_key), 0);

 for (i = 0; i < 10; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_RSSRK(0), i, rss_key[i]);




 mrqc |= (E1000_MRQC_RSS_FIELD_IPV4 |
     E1000_MRQC_RSS_FIELD_IPV4_TCP);
 mrqc |= (E1000_MRQC_RSS_FIELD_IPV6 |
     E1000_MRQC_RSS_FIELD_IPV6_TCP);
 mrqc |=( E1000_MRQC_RSS_FIELD_IPV4_UDP |
     E1000_MRQC_RSS_FIELD_IPV6_UDP);
 mrqc |=( E1000_MRQC_RSS_FIELD_IPV6_UDP_EX |
     E1000_MRQC_RSS_FIELD_IPV6_TCP_EX);

 E1000_WRITE_REG(hw, E1000_MRQC, mrqc);
}
