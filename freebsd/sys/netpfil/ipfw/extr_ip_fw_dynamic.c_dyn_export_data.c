
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct dyn_data {int flags; int hashval; int ack_rev; int ack_fwd; int state; int rulenum; scalar_t__ expire; scalar_t__ bcnt_rev; scalar_t__ bcnt_fwd; scalar_t__ pcnt_rev; scalar_t__ pcnt_fwd; } ;
typedef int set ;
struct TYPE_3__ {char rule; struct TYPE_3__* next; int bucket; scalar_t__ count; int ack_rev; int ack_fwd; int * parent; int state; scalar_t__ expire; scalar_t__ bcnt; scalar_t__ pcnt; int kidx; int dyn_type; } ;
typedef TYPE_1__ ipfw_dyn_rule ;


 int DYN_REFERENCED ;
 int IPFW_DYN_ORPHANED ;
 scalar_t__ TIME_LEQ (scalar_t__,scalar_t__) ;
 int memcpy (char*,int *,int) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
dyn_export_data(const struct dyn_data *data, uint16_t kidx, uint8_t type,
    uint8_t set, ipfw_dyn_rule *dst)
{

 dst->dyn_type = type;
 dst->kidx = kidx;
 dst->pcnt = data->pcnt_fwd + data->pcnt_rev;
 dst->bcnt = data->bcnt_fwd + data->bcnt_rev;
 dst->expire = TIME_LEQ(data->expire, time_uptime) ? 0:
     data->expire - time_uptime;


 memcpy(&dst->rule, &data->rulenum, sizeof(data->rulenum));


 memcpy((char *)&dst->rule + sizeof(data->rulenum), &set, sizeof(set));

 dst->state = data->state;
 if (data->flags & DYN_REFERENCED)
  dst->state |= IPFW_DYN_ORPHANED;


 dst->parent = ((void*)0);
 dst->ack_fwd = data->ack_fwd;
 dst->ack_rev = data->ack_rev;
 dst->count = 0;
 dst->bucket = data->hashval;




 dst->next = (ipfw_dyn_rule *)1;
}
