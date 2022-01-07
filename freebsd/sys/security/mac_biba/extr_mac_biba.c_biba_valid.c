
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mbe_type; int mbe_compartments; int mbe_grade; } ;
struct TYPE_6__ {int mbe_type; int mbe_compartments; int mbe_grade; } ;
struct TYPE_4__ {int mbe_type; int mbe_compartments; int mbe_grade; } ;
struct mac_biba {int mb_flags; TYPE_2__ mb_rangehigh; TYPE_3__ mb_rangelow; TYPE_1__ mb_effective; } ;


 int EINVAL ;
 int MAC_BIBA_BIT_SET_EMPTY (int ) ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 int MAC_BIBA_FLAG_RANGE ;




 int MAC_BIBA_TYPE_UNDEF ;
 int biba_dominate_element (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int
biba_valid(struct mac_biba *mb)
{

 if (mb->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) {
  switch (mb->mb_effective.mbe_type) {
  case 130:
   break;

  case 131:
  case 129:
  case 128:
   if (mb->mb_effective.mbe_grade != 0 ||
       !MAC_BIBA_BIT_SET_EMPTY(
       mb->mb_effective.mbe_compartments))
    return (EINVAL);
   break;

  default:
   return (EINVAL);
  }
 } else {
  if (mb->mb_effective.mbe_type != MAC_BIBA_TYPE_UNDEF)
   return (EINVAL);
 }

 if (mb->mb_flags & MAC_BIBA_FLAG_RANGE) {
  switch (mb->mb_rangelow.mbe_type) {
  case 130:
   break;

  case 131:
  case 129:
  case 128:
   if (mb->mb_rangelow.mbe_grade != 0 ||
       !MAC_BIBA_BIT_SET_EMPTY(
       mb->mb_rangelow.mbe_compartments))
    return (EINVAL);
   break;

  default:
   return (EINVAL);
  }

  switch (mb->mb_rangehigh.mbe_type) {
  case 130:
   break;

  case 131:
  case 129:
  case 128:
   if (mb->mb_rangehigh.mbe_grade != 0 ||
       !MAC_BIBA_BIT_SET_EMPTY(
       mb->mb_rangehigh.mbe_compartments))
    return (EINVAL);
   break;

  default:
   return (EINVAL);
  }
  if (!biba_dominate_element(&mb->mb_rangehigh,
      &mb->mb_rangelow))
   return (EINVAL);
 } else {
  if (mb->mb_rangelow.mbe_type != MAC_BIBA_TYPE_UNDEF ||
      mb->mb_rangehigh.mbe_type != MAC_BIBA_TYPE_UNDEF)
   return (EINVAL);
 }

 return (0);
}
