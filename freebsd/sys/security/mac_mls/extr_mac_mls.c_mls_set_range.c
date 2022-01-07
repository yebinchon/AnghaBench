
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_short ;
typedef int u_char ;
struct TYPE_3__ {int mme_compartments; void* mme_level; void* mme_type; } ;
struct TYPE_4__ {int mme_compartments; void* mme_level; void* mme_type; } ;
struct mac_mls {int mm_flags; TYPE_1__ mm_rangehigh; TYPE_2__ mm_rangelow; } ;


 int MAC_MLS_FLAG_RANGE ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
mls_set_range(struct mac_mls *mm, u_short typelow, u_short levellow,
    u_char *compartmentslow, u_short typehigh, u_short levelhigh,
    u_char *compartmentshigh)
{

 mm->mm_rangelow.mme_type = typelow;
 mm->mm_rangelow.mme_level = levellow;
 if (compartmentslow != ((void*)0))
  memcpy(mm->mm_rangelow.mme_compartments, compartmentslow,
      sizeof(mm->mm_rangelow.mme_compartments));
 mm->mm_rangehigh.mme_type = typehigh;
 mm->mm_rangehigh.mme_level = levelhigh;
 if (compartmentshigh != ((void*)0))
  memcpy(mm->mm_rangehigh.mme_compartments, compartmentshigh,
      sizeof(mm->mm_rangehigh.mme_compartments));
 mm->mm_flags |= MAC_MLS_FLAG_RANGE;
}
