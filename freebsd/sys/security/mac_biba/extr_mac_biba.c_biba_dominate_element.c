
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba_element {int mbe_type; int mbe_grade; int mbe_compartments; } ;


 int MAC_BIBA_BIT_TEST (int,int ) ;
 int MAC_BIBA_MAX_COMPARTMENTS ;




 int panic (char*) ;

__attribute__((used)) static int
biba_dominate_element(struct mac_biba_element *a, struct mac_biba_element *b)
{
 int bit;

 switch (a->mbe_type) {
 case 131:
 case 129:
  return (1);

 case 128:
  switch (b->mbe_type) {
  case 130:
  case 129:
   return (0);

  case 131:
  case 128:
   return (1);

  default:
   panic("biba_dominate_element: b->mbe_type invalid");
  }

 case 130:
  switch (b->mbe_type) {
  case 131:
  case 128:
   return (1);

  case 129:
   return (0);

  case 130:
   for (bit = 1; bit <= MAC_BIBA_MAX_COMPARTMENTS; bit++)
    if (!MAC_BIBA_BIT_TEST(bit,
        a->mbe_compartments) &&
        MAC_BIBA_BIT_TEST(bit, b->mbe_compartments))
     return (0);
   return (a->mbe_grade >= b->mbe_grade);

  default:
   panic("biba_dominate_element: b->mbe_type invalid");
  }

 default:
  panic("biba_dominate_element: a->mbe_type invalid");
 }

 return (0);
}
