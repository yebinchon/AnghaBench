
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf_rss_info {int * key; } ;
struct nicvf {struct nicvf_rss_info rss_info; } ;


 int NIC_VNIC_RSS_KEY_0_4 ;
 int RSS_HASH_KEY_SIZE ;
 int nicvf_reg_write (struct nicvf*,int,int ) ;

__attribute__((used)) static void
nicvf_set_rss_key(struct nicvf *nic)
{
 struct nicvf_rss_info *rss;
 uint64_t key_addr;
 int idx;

 rss = &nic->rss_info;
 key_addr = NIC_VNIC_RSS_KEY_0_4;

 for (idx = 0; idx < RSS_HASH_KEY_SIZE; idx++) {
  nicvf_reg_write(nic, key_addr, rss->key[idx]);
  key_addr += sizeof(uint64_t);
 }
}
