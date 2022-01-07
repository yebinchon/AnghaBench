
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_short ;
typedef int u_char ;
struct TYPE_2__ {int mbe_compartments; void* mbe_grade; void* mbe_type; } ;
struct mac_biba {int mb_flags; TYPE_1__ mb_effective; } ;


 int MAC_BIBA_FLAG_EFFECTIVE ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
biba_set_effective(struct mac_biba *mb, u_short type, u_short grade,
    u_char *compartments)
{

 mb->mb_effective.mbe_type = type;
 mb->mb_effective.mbe_grade = grade;
 if (compartments != ((void*)0))
  memcpy(mb->mb_effective.mbe_compartments, compartments,
      sizeof(mb->mb_effective.mbe_compartments));
 mb->mb_flags |= MAC_BIBA_FLAG_EFFECTIVE;
}
