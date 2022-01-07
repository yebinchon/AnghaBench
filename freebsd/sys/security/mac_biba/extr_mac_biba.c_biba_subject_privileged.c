
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mbe_type; } ;
struct TYPE_6__ {scalar_t__ mbe_type; } ;
struct TYPE_4__ {scalar_t__ mbe_type; } ;
struct mac_biba {int mb_flags; TYPE_2__ mb_rangehigh; TYPE_3__ mb_rangelow; TYPE_1__ mb_effective; } ;


 int EPERM ;
 int KASSERT (int,char*) ;
 int MAC_BIBA_FLAGS_BOTH ;
 scalar_t__ MAC_BIBA_TYPE_EQUAL ;
 scalar_t__ MAC_BIBA_TYPE_HIGH ;
 scalar_t__ MAC_BIBA_TYPE_LOW ;

__attribute__((used)) static int
biba_subject_privileged(struct mac_biba *mb)
{

 KASSERT((mb->mb_flags & MAC_BIBA_FLAGS_BOTH) == MAC_BIBA_FLAGS_BOTH,
     ("biba_subject_privileged: subject doesn't have both labels"));


 if (mb->mb_effective.mbe_type == MAC_BIBA_TYPE_EQUAL)
  return (0);


 if (mb->mb_rangelow.mbe_type == MAC_BIBA_TYPE_EQUAL ||
     mb->mb_rangehigh.mbe_type == MAC_BIBA_TYPE_EQUAL)
  return (0);


 if (mb->mb_rangelow.mbe_type == MAC_BIBA_TYPE_LOW &&
     mb->mb_rangehigh.mbe_type == MAC_BIBA_TYPE_HIGH)
  return (0);


 return (EPERM);
}
