
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mbe_type; } ;
struct TYPE_5__ {scalar_t__ mbe_type; } ;
struct TYPE_4__ {scalar_t__ mbe_type; } ;
struct mac_biba {int mb_flags; TYPE_3__ mb_rangehigh; TYPE_2__ mb_rangelow; TYPE_1__ mb_effective; } ;


 int MAC_BIBA_FLAG_EFFECTIVE ;
 int MAC_BIBA_FLAG_RANGE ;
 scalar_t__ MAC_BIBA_TYPE_EQUAL ;

__attribute__((used)) static int
biba_contains_equal(struct mac_biba *mb)
{

 if (mb->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) {
  if (mb->mb_effective.mbe_type == MAC_BIBA_TYPE_EQUAL)
   return (1);
 }

 if (mb->mb_flags & MAC_BIBA_FLAG_RANGE) {
  if (mb->mb_rangelow.mbe_type == MAC_BIBA_TYPE_EQUAL)
   return (1);
  if (mb->mb_rangehigh.mbe_type == MAC_BIBA_TYPE_EQUAL)
   return (1);
 }

 return (0);
}
