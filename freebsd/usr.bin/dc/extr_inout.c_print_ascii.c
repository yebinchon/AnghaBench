
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct number {int number; } ;
typedef int FILE ;
typedef int BIGNUM ;


 int * BN_dup (int ) ;
 int BN_free (int *) ;
 int BN_is_bit_set (int *,int) ;
 scalar_t__ BN_is_negative (int *) ;
 int BN_num_bytes (int *) ;
 int BN_set_negative (int *,int ) ;
 int bn_checkp (int *) ;
 int putc (int,int *) ;

void
print_ascii(FILE *f, const struct number *n)
{
 BIGNUM *v;
 int ch, i, numbits;

 v = BN_dup(n->number);
 bn_checkp(v);

 if (BN_is_negative(v))
  BN_set_negative(v, 0);

 numbits = BN_num_bytes(v) * 8;
 while (numbits > 0) {
  ch = 0;
  for (i = 0; i < 8; i++)
   ch |= BN_is_bit_set(v, numbits-i-1) << (7 - i);
  putc(ch, f);
  numbits -= 8;
 }
 BN_free(v);
}
