
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls_element {int mme_type; int mme_level; int mme_compartments; } ;


 int MAC_MLS_BIT_TEST (int,int ) ;
 int MAC_MLS_MAX_COMPARTMENTS ;




 int panic (char*) ;

__attribute__((used)) static int
mls_dominate_element(struct mac_mls_element *a, struct mac_mls_element *b)
{
 int bit;

 switch (a->mme_type) {
 case 131:
 case 130:
  return (1);

 case 128:
  switch (b->mme_type) {
  case 129:
  case 130:
   return (0);

  case 131:
  case 128:
   return (1);

  default:
   panic("mls_dominate_element: b->mme_type invalid");
  }

 case 129:
  switch (b->mme_type) {
  case 131:
  case 128:
   return (1);

  case 130:
   return (0);

  case 129:
   for (bit = 1; bit <= MAC_MLS_MAX_COMPARTMENTS; bit++)
    if (!MAC_MLS_BIT_TEST(bit,
        a->mme_compartments) &&
        MAC_MLS_BIT_TEST(bit, b->mme_compartments))
     return (0);
   return (a->mme_level >= b->mme_level);

  default:
   panic("mls_dominate_element: b->mme_type invalid");
  }

 default:
  panic("mls_dominate_element: a->mme_type invalid");
 }

 return (0);
}
