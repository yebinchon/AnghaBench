
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct table_algo {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_8__ {int idx; } ;


 TYPE_1__ addr_hash ;
 TYPE_1__ addr_kfib ;
 TYPE_1__ addr_radix ;
 TYPE_1__ flow_hash ;
 TYPE_1__ iface_idx ;
 int ipfw_add_table_algo (struct ip_fw_chain*,TYPE_1__*,size_t,int *) ;
 TYPE_1__ number_array ;

void
ipfw_table_algo_init(struct ip_fw_chain *ch)
{
 size_t sz;




 sz = sizeof(struct table_algo);
 ipfw_add_table_algo(ch, &addr_radix, sz, &addr_radix.idx);
 ipfw_add_table_algo(ch, &addr_hash, sz, &addr_hash.idx);
 ipfw_add_table_algo(ch, &iface_idx, sz, &iface_idx.idx);
 ipfw_add_table_algo(ch, &number_array, sz, &number_array.idx);
 ipfw_add_table_algo(ch, &flow_hash, sz, &flow_hash.idx);
 ipfw_add_table_algo(ch, &addr_kfib, sz, &addr_kfib.idx);
}
