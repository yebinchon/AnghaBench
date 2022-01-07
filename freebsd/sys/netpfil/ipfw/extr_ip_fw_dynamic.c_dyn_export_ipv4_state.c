
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ip_fw {int set; } ;
struct dyn_ipv4_state {int type; int proto; TYPE_6__* data; int sport; int dport; int src; int dst; int kidx; TYPE_3__* limit; } ;
struct TYPE_8__ {int addr_type; scalar_t__ extra; scalar_t__ flow_id6; int src_ip6; int dst_ip6; scalar_t__ _flags; int proto; int fib; int src_port; int dst_port; int src_ip; int dst_ip; } ;
struct TYPE_9__ {TYPE_1__ id; } ;
typedef TYPE_2__ ipfw_dyn_rule ;
struct TYPE_11__ {int fibnum; struct ip_fw* parent; } ;
struct TYPE_10__ {struct ip_fw* parent; } ;


 int O_LIMIT ;

 int dyn_export_data (TYPE_6__*,int ,int,int ,TYPE_2__*) ;
 int dyn_export_parent (TYPE_3__*,int ,int ,TYPE_2__*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
dyn_export_ipv4_state(const struct dyn_ipv4_state *s, ipfw_dyn_rule *dst)
{
 struct ip_fw *rule;

 switch (s->type) {
 case 128:
  rule = s->limit->parent;
  dyn_export_parent(s->limit, s->kidx, rule->set, dst);
  break;
 default:
  rule = s->data->parent;
  if (s->type == O_LIMIT)
   rule = ((struct dyn_ipv4_state *)rule)->limit->parent;
  dyn_export_data(s->data, s->kidx, s->type, rule->set, dst);
 }

 dst->id.dst_ip = s->dst;
 dst->id.src_ip = s->src;
 dst->id.dst_port = s->dport;
 dst->id.src_port = s->sport;
 dst->id.fib = s->data->fibnum;
 dst->id.proto = s->proto;
 dst->id._flags = 0;
 dst->id.addr_type = 4;

 memset(&dst->id.dst_ip6, 0, sizeof(dst->id.dst_ip6));
 memset(&dst->id.src_ip6, 0, sizeof(dst->id.src_ip6));
 dst->id.flow_id6 = dst->id.extra = 0;
}
