
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int mle_type; } ;
struct TYPE_8__ {int mle_type; } ;
struct TYPE_5__ {int mle_type; } ;
struct TYPE_6__ {int mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_3__ ml_rangehigh; TYPE_4__ ml_rangelow; TYPE_1__ ml_auxsingle; TYPE_2__ ml_single; } ;


 int EINVAL ;
 int MAC_LOMAC_FLAG_AUX ;
 int MAC_LOMAC_FLAG_RANGE ;
 int MAC_LOMAC_FLAG_SINGLE ;




 int MAC_LOMAC_TYPE_UNDEF ;
 int lomac_dominate_element (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static int
lomac_valid(struct mac_lomac *ml)
{

 if (ml->ml_flags & MAC_LOMAC_FLAG_SINGLE) {
  switch (ml->ml_single.mle_type) {
  case 130:
  case 131:
  case 129:
  case 128:
   break;

  default:
   return (EINVAL);
  }
 } else {
  if (ml->ml_single.mle_type != MAC_LOMAC_TYPE_UNDEF)
   return (EINVAL);
 }

 if (ml->ml_flags & MAC_LOMAC_FLAG_AUX) {
  switch (ml->ml_auxsingle.mle_type) {
  case 130:
  case 131:
  case 129:
  case 128:
   break;

  default:
   return (EINVAL);
  }
 } else {
  if (ml->ml_auxsingle.mle_type != MAC_LOMAC_TYPE_UNDEF)
   return (EINVAL);
 }

 if (ml->ml_flags & MAC_LOMAC_FLAG_RANGE) {
  switch (ml->ml_rangelow.mle_type) {
  case 130:
  case 131:
  case 129:
  case 128:
   break;

  default:
   return (EINVAL);
  }

  switch (ml->ml_rangehigh.mle_type) {
  case 130:
  case 131:
  case 129:
  case 128:
   break;

  default:
   return (EINVAL);
  }
  if (!lomac_dominate_element(&ml->ml_rangehigh,
      &ml->ml_rangelow))
   return (EINVAL);
 } else {
  if (ml->ml_rangelow.mle_type != MAC_LOMAC_TYPE_UNDEF ||
      ml->ml_rangehigh.mle_type != MAC_LOMAC_TYPE_UNDEF)
   return (EINVAL);
 }

 return (0);
}
