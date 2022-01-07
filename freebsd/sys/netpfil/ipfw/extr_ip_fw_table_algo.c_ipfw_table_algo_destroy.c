
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ip_fw_chain {int dummy; } ;
struct TYPE_12__ {int idx; } ;
struct TYPE_11__ {int idx; } ;
struct TYPE_10__ {int idx; } ;
struct TYPE_9__ {int idx; } ;
struct TYPE_8__ {int idx; } ;
struct TYPE_7__ {int idx; } ;


 TYPE_6__ addr_hash ;
 TYPE_5__ addr_kfib ;
 TYPE_4__ addr_radix ;
 TYPE_3__ flow_hash ;
 TYPE_2__ iface_idx ;
 int ipfw_del_table_algo (struct ip_fw_chain*,int ) ;
 TYPE_1__ number_array ;

void
ipfw_table_algo_destroy(struct ip_fw_chain *ch)
{

 ipfw_del_table_algo(ch, addr_radix.idx);
 ipfw_del_table_algo(ch, addr_hash.idx);
 ipfw_del_table_algo(ch, iface_idx.idx);
 ipfw_del_table_algo(ch, number_array.idx);
 ipfw_del_table_algo(ch, flow_hash.idx);
 ipfw_del_table_algo(ch, addr_kfib.idx);
}
