
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ip_fw {scalar_t__ rulenum; scalar_t__ set; } ;
struct TYPE_3__ {int flags; scalar_t__ set; scalar_t__ start_rule; scalar_t__ end_rule; } ;
typedef TYPE_1__ ipfw_range_tlv ;


 scalar_t__ IPFW_DEFAULT_RULE ;
 int IPFW_RCFLAG_ALL ;
 int IPFW_RCFLAG_DEFAULT ;
 int IPFW_RCFLAG_RANGE ;
 int IPFW_RCFLAG_SET ;
 scalar_t__ RESVD_SET ;

int
ipfw_match_range(struct ip_fw *rule, ipfw_range_tlv *rt)
{


 if (rule->rulenum == IPFW_DEFAULT_RULE &&
     (rt->flags & IPFW_RCFLAG_DEFAULT) == 0)
  return (0);


 if ((rt->flags & IPFW_RCFLAG_ALL) != 0 && rule->set == RESVD_SET)
  return (0);


 if ((rt->flags & IPFW_RCFLAG_SET) != 0 && rule->set != rt->set)
  return (0);

 if ((rt->flags & IPFW_RCFLAG_RANGE) != 0 &&
     (rule->rulenum < rt->start_rule || rule->rulenum > rt->end_rule))
  return (0);

 return (1);
}
