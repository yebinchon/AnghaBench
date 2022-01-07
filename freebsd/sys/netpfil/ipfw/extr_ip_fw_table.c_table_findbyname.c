
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct named_object {int dummy; } ;
struct table_config {struct named_object no; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int find_table_err (int ,struct tid_info*,struct table_config**) ;

__attribute__((used)) static int
table_findbyname(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
 struct table_config *tc;
 int error;

 IPFW_UH_WLOCK_ASSERT(ch);

 error = find_table_err(CHAIN_TO_NI(ch), ti, &tc);
 if (error != 0)
  return (error);

 *pno = &tc->no;
 return (0);
}
