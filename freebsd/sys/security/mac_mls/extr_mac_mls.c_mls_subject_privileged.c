
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mme_type; } ;
struct TYPE_6__ {scalar_t__ mme_type; } ;
struct TYPE_4__ {scalar_t__ mme_type; } ;
struct mac_mls {int mm_flags; TYPE_2__ mm_rangehigh; TYPE_3__ mm_rangelow; TYPE_1__ mm_effective; } ;


 int EPERM ;
 int KASSERT (int,char*) ;
 int MAC_MLS_FLAGS_BOTH ;
 scalar_t__ MAC_MLS_TYPE_EQUAL ;
 scalar_t__ MAC_MLS_TYPE_HIGH ;
 scalar_t__ MAC_MLS_TYPE_LOW ;

__attribute__((used)) static int
mls_subject_privileged(struct mac_mls *mm)
{

 KASSERT((mm->mm_flags & MAC_MLS_FLAGS_BOTH) == MAC_MLS_FLAGS_BOTH,
     ("mls_subject_privileged: subject doesn't have both labels"));


 if (mm->mm_effective.mme_type == MAC_MLS_TYPE_EQUAL)
  return (0);


 if (mm->mm_rangelow.mme_type == MAC_MLS_TYPE_EQUAL ||
     mm->mm_rangehigh.mme_type == MAC_MLS_TYPE_EQUAL)
  return (0);


 if (mm->mm_rangelow.mme_type == MAC_MLS_TYPE_LOW &&
     mm->mm_rangehigh.mme_type == MAC_MLS_TYPE_HIGH)
  return (0);


 return (EPERM);
}
