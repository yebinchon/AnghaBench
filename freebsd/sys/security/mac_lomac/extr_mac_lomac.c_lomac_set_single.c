
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_short ;
struct TYPE_2__ {void* mle_grade; void* mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_1__ ml_single; } ;


 int MAC_LOMAC_FLAG_SINGLE ;

__attribute__((used)) static void
lomac_set_single(struct mac_lomac *ml, u_short type, u_short grade)
{

 ml->ml_single.mle_type = type;
 ml->ml_single.mle_grade = grade;
 ml->ml_flags |= MAC_LOMAC_FLAG_SINGLE;
}
