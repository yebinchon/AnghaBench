
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
struct dyn_parent {int hashval; int rulenum; scalar_t__ expire; } ;
typedef int set ;
struct TYPE_3__ {char rule; struct TYPE_3__* next; int bucket; scalar_t__ ack_rev; scalar_t__ ack_fwd; scalar_t__ state; int * parent; scalar_t__ bcnt; scalar_t__ pcnt; scalar_t__ expire; void* count; void* kidx; int dyn_type; } ;
typedef TYPE_1__ ipfw_dyn_rule ;


 scalar_t__ DPARENT_COUNT (struct dyn_parent const*) ;
 int O_LIMIT_PARENT ;
 scalar_t__ TIME_LEQ (scalar_t__,scalar_t__) ;
 int memcpy (char*,int *,int) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
dyn_export_parent(const struct dyn_parent *p, uint16_t kidx, uint8_t set,
    ipfw_dyn_rule *dst)
{

 dst->dyn_type = O_LIMIT_PARENT;
 dst->kidx = kidx;
 dst->count = (uint16_t)DPARENT_COUNT(p);
 dst->expire = TIME_LEQ(p->expire, time_uptime) ? 0:
     p->expire - time_uptime;


 memcpy(&dst->rule, &p->rulenum, sizeof(p->rulenum));


 memcpy((char *)&dst->rule + sizeof(p->rulenum), &set, sizeof(set));


 dst->pcnt = 0;
 dst->bcnt = 0;
 dst->parent = ((void*)0);
 dst->state = 0;
 dst->ack_fwd = 0;
 dst->ack_rev = 0;
 dst->bucket = p->hashval;




 dst->next = (ipfw_dyn_rule *)1;
}
