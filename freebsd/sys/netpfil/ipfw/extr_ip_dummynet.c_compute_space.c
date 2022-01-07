
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dn_sch {int dummy; } ;
struct dn_profile {int dummy; } ;
struct dn_link {int dummy; } ;
struct dn_id {int subtype; } ;
struct dn_fs {int dummy; } ;
struct dn_flow {int dummy; } ;
struct copy_args {int flags; } ;
struct TYPE_2__ {int schk_count; int fsk_count; int queue_count; int si_count; } ;


 int DN_C_FLOW ;
 int DN_C_FS ;
 int DN_C_LINK ;
 int DN_C_QUEUE ;
 int DN_C_SCH ;




 int ED_MAX_SAMPLES_NO ;
 TYPE_1__ dn_cfg ;
 int dn_compat_calc_size () ;

__attribute__((used)) static int
compute_space(struct dn_id *cmd, struct copy_args *a)
{
 int x = 0, need = 0;
 int profile_size = sizeof(struct dn_profile) -
  ED_MAX_SAMPLES_NO*sizeof(int);
 switch (cmd->subtype) {
 default:
  return -1;




 case 129:
  x = DN_C_LINK | DN_C_SCH | DN_C_FLOW;
  need += dn_cfg.schk_count *
   (sizeof(struct dn_fs) + profile_size) / 2;
  need += dn_cfg.fsk_count * sizeof(uint32_t);
  break;
 case 128:
  need += dn_cfg.schk_count *
   (sizeof(struct dn_fs) + profile_size) / 2;
  need += dn_cfg.fsk_count * sizeof(uint32_t);
  x = DN_C_SCH | DN_C_LINK | DN_C_FLOW;
  break;
 case 131:
  x = DN_C_FS | DN_C_QUEUE;
  break;
 case 130:
  need = dn_compat_calc_size();
  break;
 }
 a->flags = x;
 if (x & DN_C_SCH) {
  need += dn_cfg.schk_count * sizeof(struct dn_sch) / 2;

  need += dn_cfg.schk_count * sizeof(struct dn_id) / 2;
 }
 if (x & DN_C_FS)
  need += dn_cfg.fsk_count * sizeof(struct dn_fs);
 if (x & DN_C_LINK) {
  need += dn_cfg.schk_count * sizeof(struct dn_link) / 2;
 }





 if (x & DN_C_QUEUE)
  need += dn_cfg.queue_count * sizeof(struct dn_flow);
 if (x & DN_C_FLOW)
  need += dn_cfg.si_count * (sizeof(struct dn_flow));
 return need;
}
