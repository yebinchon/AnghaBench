
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_short ;
typedef int u_char ;
struct TYPE_2__ {int mme_compartments; void* mme_level; void* mme_type; } ;
struct mac_mls {int mm_flags; TYPE_1__ mm_effective; } ;


 int MAC_MLS_FLAG_EFFECTIVE ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
mls_set_effective(struct mac_mls *mm, u_short type, u_short level,
    u_char *compartments)
{

 mm->mm_effective.mme_type = type;
 mm->mm_effective.mme_level = level;
 if (compartments != ((void*)0))
  memcpy(mm->mm_effective.mme_compartments, compartments,
      sizeof(mm->mm_effective.mme_compartments));
 mm->mm_flags |= MAC_MLS_FLAG_EFFECTIVE;
}
