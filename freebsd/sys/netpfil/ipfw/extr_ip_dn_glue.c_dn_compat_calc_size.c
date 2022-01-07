
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_pipe8 {int dummy; } ;
struct dn_flow_set {int dummy; } ;
struct dn_flow_queue8 {int dummy; } ;
struct TYPE_2__ {int schk_count; int fsk_count; int si_count; int queue_count; } ;


 TYPE_1__ dn_cfg ;

int
dn_compat_calc_size(void)
{
 int need = 0;







 need += dn_cfg.schk_count * sizeof(struct dn_pipe8) / 2;
 need += dn_cfg.fsk_count * sizeof(struct dn_flow_set);
 need += dn_cfg.si_count * sizeof(struct dn_flow_queue8);
 need += dn_cfg.queue_count * sizeof(struct dn_flow_queue8);

 return need;
}
