
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;

struct namedobj_instance *
ipfw_get_table_objhash(struct ip_fw_chain *ch)
{

 return (CHAIN_TO_NI(ch));
}
