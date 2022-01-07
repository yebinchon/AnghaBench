
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_print_dec_fp (int ,int *) ;
 int BN_print_fp (int ,int *) ;
 int fputs (char*,int ) ;
 scalar_t__ hflag ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
pr_print(BIGNUM *val)
{
 if (hflag) {
  fputs(" 0x", stdout);
  BN_print_fp(stdout, val);
 } else {
  putchar(' ');
  BN_print_dec_fp(stdout, val);
 }
}
