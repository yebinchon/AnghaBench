
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tid_info {int dummy; } ;
struct table_config {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int ESRCH ;
 struct table_config* find_table (int ,struct tid_info*) ;
 int table_get_count (struct ip_fw_chain*,struct table_config*) ;

int
ipfw_count_table(struct ip_fw_chain *ch, struct tid_info *ti, uint32_t *cnt)
{
 struct table_config *tc;

 if ((tc = find_table(CHAIN_TO_NI(ch), ti)) == ((void*)0))
  return (ESRCH);
 *cnt = table_get_count(ch, tc);
 return (0);
}
