
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba_element {scalar_t__ mbe_type; scalar_t__ mbe_grade; } ;


 scalar_t__ MAC_BIBA_TYPE_EQUAL ;

__attribute__((used)) static int
biba_equal_element(struct mac_biba_element *a, struct mac_biba_element *b)
{

 if (a->mbe_type == MAC_BIBA_TYPE_EQUAL ||
     b->mbe_type == MAC_BIBA_TYPE_EQUAL)
  return (1);

 return (a->mbe_type == b->mbe_type && a->mbe_grade == b->mbe_grade);
}
