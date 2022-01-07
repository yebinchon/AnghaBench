
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mbo_flags; int mbo_neg; int mbo_type; } ;
struct TYPE_3__ {int mbs_flags; int mbs_neg; } ;
struct mac_bsdextended_rule {int mbr_mode; TYPE_2__ mbr_object; TYPE_1__ mbr_subject; } ;


 int EINVAL ;
 int MBI_ALLPERM ;
 int MBO_ALL_FLAGS ;
 int MBO_ALL_TYPE ;
 int MBO_TYPE_DEFINED ;
 int MBS_ALL_FLAGS ;

__attribute__((used)) static int
ugidfw_rule_valid(struct mac_bsdextended_rule *rule)
{

 if ((rule->mbr_subject.mbs_flags | MBS_ALL_FLAGS) != MBS_ALL_FLAGS)
  return (EINVAL);
 if ((rule->mbr_subject.mbs_neg | MBS_ALL_FLAGS) != MBS_ALL_FLAGS)
  return (EINVAL);
 if ((rule->mbr_object.mbo_flags | MBO_ALL_FLAGS) != MBO_ALL_FLAGS)
  return (EINVAL);
 if ((rule->mbr_object.mbo_neg | MBO_ALL_FLAGS) != MBO_ALL_FLAGS)
  return (EINVAL);
 if (((rule->mbr_object.mbo_flags & MBO_TYPE_DEFINED) != 0) &&
     (rule->mbr_object.mbo_type | MBO_ALL_TYPE) != MBO_ALL_TYPE)
  return (EINVAL);
 if ((rule->mbr_mode | MBI_ALLPERM) != MBI_ALLPERM)
  return (EINVAL);
 return (0);
}
