
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int flags; scalar_t__ set; scalar_t__ start_rule; scalar_t__ end_rule; } ;
typedef TYPE_1__ ipfw_range_tlv ;


 int IPFW_RCFLAG_ALL ;
 int IPFW_RCFLAG_DYNAMIC ;
 int IPFW_RCFLAG_RANGE ;
 int IPFW_RCFLAG_SET ;
 int MPASS (int ) ;

__attribute__((used)) static int
dyn_match_range(uint16_t rulenum, uint8_t set, const ipfw_range_tlv *rt)
{

 MPASS(rt != ((void*)0));

 if (rt->flags & IPFW_RCFLAG_ALL) {
  if (rt->flags & IPFW_RCFLAG_DYNAMIC)
   return (2);
  return (1);
 }
 if ((rt->flags & IPFW_RCFLAG_SET) != 0 && set != rt->set)
  return (0);
 if ((rt->flags & IPFW_RCFLAG_RANGE) != 0 &&
     (rulenum < rt->start_rule || rulenum > rt->end_rule))
  return (0);
 if (rt->flags & IPFW_RCFLAG_DYNAMIC)
  return (2);
 return (1);
}
