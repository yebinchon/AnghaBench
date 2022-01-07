
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sockopt_data {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_table_args {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
typedef int ipfw_xtable_info ;
struct TYPE_3__ {int count; int objsize; int size; } ;
typedef TYPE_1__ ipfw_obj_lheader ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int ENOMEM ;
 int export_table_internal ;
 int ipfw_objhash_count (int ) ;
 int ipfw_objhash_foreach (int ,int ,struct dump_table_args*) ;

__attribute__((used)) static int
export_tables(struct ip_fw_chain *ch, ipfw_obj_lheader *olh,
    struct sockopt_data *sd)
{
 uint32_t size;
 uint32_t count;
 struct dump_table_args dta;

 count = ipfw_objhash_count(CHAIN_TO_NI(ch));
 size = count * sizeof(ipfw_xtable_info) + sizeof(ipfw_obj_lheader);


 olh->count = count;
 olh->objsize = sizeof(ipfw_xtable_info);

 if (size > olh->size) {
  olh->size = size;
  return (ENOMEM);
 }

 olh->size = size;

 dta.ch = ch;
 dta.sd = sd;

 ipfw_objhash_foreach(CHAIN_TO_NI(ch), export_table_internal, &dta);

 return (0);
}
