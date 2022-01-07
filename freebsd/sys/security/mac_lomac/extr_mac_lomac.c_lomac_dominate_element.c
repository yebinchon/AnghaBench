
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac_element {int mle_type; int mle_grade; } ;






 int panic (char*) ;

__attribute__((used)) static int
lomac_dominate_element(struct mac_lomac_element *a,
    struct mac_lomac_element *b)
{

 switch (a->mle_type) {
 case 131:
 case 129:
  return (1);

 case 128:
  switch (b->mle_type) {
  case 130:
  case 129:
   return (0);

  case 131:
  case 128:
   return (1);

  default:
   panic("lomac_dominate_element: b->mle_type invalid");
  }

 case 130:
  switch (b->mle_type) {
  case 131:
  case 128:
   return (1);

  case 129:
   return (0);

  case 130:
   return (a->mle_grade >= b->mle_grade);

  default:
   panic("lomac_dominate_element: b->mle_type invalid");
  }

 default:
  panic("lomac_dominate_element: a->mle_type invalid");
 }
}
