
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tid_info {int dummy; } ;
struct table_config {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_xtable ;
typedef int ipfw_table_xentry ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 struct table_config* find_table (int ,struct tid_info*) ;
 int table_get_count (struct ip_fw_chain*,struct table_config*) ;

int
ipfw_count_xtable(struct ip_fw_chain *ch, struct tid_info *ti, uint32_t *cnt)
{
 struct table_config *tc;
 uint32_t count;

 if ((tc = find_table(CHAIN_TO_NI(ch), ti)) == ((void*)0)) {
  *cnt = 0;
  return (0);
 }

 count = table_get_count(ch, tc);
 *cnt = count * sizeof(ipfw_table_xentry);
 if (count > 0)
  *cnt += sizeof(ipfw_xtable);
 return (0);
}
