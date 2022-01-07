
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stripe ;
typedef int U32 ;


 int format_stripe (char*,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
display_stripe_map(const char *label, U32 StripeMap)
{
 char stripe[5];
 int comma, i;

 comma = 0;
 printf("%s: ", label);
 for (i = 0; StripeMap != 0; i++, StripeMap >>= 1)
  if (StripeMap & 1) {
   format_stripe(stripe, sizeof(stripe), 1 << i);
   if (comma)
    printf(", ");
   printf("%s", stripe);
   comma = 1;
  }
 printf("\n");
}
