
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct number {scalar_t__ scale; int number; } ;
typedef enum bcode_compare { ____Placeholder_bcode_compare } bcode_compare ;
 int BN_cmp (int ,int ) ;
 int free_number (struct number*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int normalize (struct number*,scalar_t__) ;

__attribute__((used)) static bool
compare_numbers(enum bcode_compare type, struct number *a, struct number *b)
{
 u_int scale;
 int cmp;

 scale = max(a->scale, b->scale);

 if (scale > a->scale)
  normalize(a, scale);
 else if (scale > b->scale)
  normalize(b, scale);

 cmp = BN_cmp(a->number, b->number);

 free_number(a);
 free_number(b);

 switch (type) {
 case 133:
  return (cmp == 0);
 case 130:
  return (cmp != 0);
 case 131:
  return (cmp < 0);
 case 128:
  return (cmp >= 0);
 case 132:
  return (cmp > 0);
 case 129:
  return (cmp <= 0);
 }
 return (0);
}
