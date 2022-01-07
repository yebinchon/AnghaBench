
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba_element {scalar_t__ mbe_type; } ;
struct mac_biba {int mb_flags; struct mac_biba_element mb_effective; } ;


 int KASSERT (int,char*) ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 scalar_t__ MAC_BIBA_TYPE_EQUAL ;
 scalar_t__ MAC_BIBA_TYPE_HIGH ;

__attribute__((used)) static int
biba_subject_dominate_high(struct mac_biba *mb)
{
 struct mac_biba_element *element;

 KASSERT((mb->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) != 0,
     ("biba_effective_in_range: mb not effective"));
 element = &mb->mb_effective;

 return (element->mbe_type == MAC_BIBA_TYPE_EQUAL ||
     element->mbe_type == MAC_BIBA_TYPE_HIGH);
}
