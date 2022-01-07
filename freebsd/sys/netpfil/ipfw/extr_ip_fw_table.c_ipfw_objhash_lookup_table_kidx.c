
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 struct named_object* ipfw_objhash_lookup_kidx (int ,int ) ;

struct named_object *
ipfw_objhash_lookup_table_kidx(struct ip_fw_chain *ch, uint16_t kidx)
{

 return (ipfw_objhash_lookup_kidx(CHAIN_TO_NI(ch), kidx));
}
