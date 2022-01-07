
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_print_fp (int ,int const*) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void
show_result(const BIGNUM *a, const BIGNUM *b, const BIGNUM *c,
    const BIGNUM *sw, const BIGNUM *hw)
{
 printf("\n");

 printf("A = ");
 BN_print_fp(stdout, a);
 printf("\n");

 printf("B = ");
 BN_print_fp(stdout, b);
 printf("\n");

 printf("C = ");
 BN_print_fp(stdout, c);
 printf("\n");

 printf("sw= ");
 BN_print_fp(stdout, sw);
 printf("\n");

 printf("hw= ");
 BN_print_fp(stdout, hw);
 printf("\n");

 printf("\n");
}
