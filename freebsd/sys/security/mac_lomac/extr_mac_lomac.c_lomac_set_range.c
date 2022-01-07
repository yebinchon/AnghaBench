
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_short ;
struct TYPE_4__ {void* mle_grade; void* mle_type; } ;
struct TYPE_3__ {void* mle_grade; void* mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_2__ ml_rangehigh; TYPE_1__ ml_rangelow; } ;


 int MAC_LOMAC_FLAG_RANGE ;

__attribute__((used)) static void
lomac_set_range(struct mac_lomac *ml, u_short typelow, u_short gradelow,
    u_short typehigh, u_short gradehigh)
{

 ml->ml_rangelow.mle_type = typelow;
 ml->ml_rangelow.mle_grade = gradelow;
 ml->ml_rangehigh.mle_type = typehigh;
 ml->ml_rangehigh.mle_grade = gradehigh;
 ml->ml_flags |= MAC_LOMAC_FLAG_RANGE;
}
