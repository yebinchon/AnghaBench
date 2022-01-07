
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ mle_type; } ;
struct TYPE_7__ {scalar_t__ mle_type; } ;
struct TYPE_6__ {scalar_t__ mle_type; } ;
struct TYPE_5__ {scalar_t__ mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_4__ ml_rangehigh; TYPE_3__ ml_rangelow; TYPE_2__ ml_auxsingle; TYPE_1__ ml_single; } ;


 int MAC_LOMAC_FLAG_AUX ;
 int MAC_LOMAC_FLAG_RANGE ;
 int MAC_LOMAC_FLAG_SINGLE ;
 scalar_t__ MAC_LOMAC_TYPE_EQUAL ;

__attribute__((used)) static int
lomac_contains_equal(struct mac_lomac *ml)
{

 if (ml->ml_flags & MAC_LOMAC_FLAG_SINGLE)
  if (ml->ml_single.mle_type == MAC_LOMAC_TYPE_EQUAL)
   return (1);
 if (ml->ml_flags & MAC_LOMAC_FLAG_AUX)
  if (ml->ml_auxsingle.mle_type == MAC_LOMAC_TYPE_EQUAL)
   return (1);

 if (ml->ml_flags & MAC_LOMAC_FLAG_RANGE) {
  if (ml->ml_rangelow.mle_type == MAC_LOMAC_TYPE_EQUAL)
   return (1);
  if (ml->ml_rangehigh.mle_type == MAC_LOMAC_TYPE_EQUAL)
   return (1);
 }

 return (0);
}
