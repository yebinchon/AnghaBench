
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef scalar_t__ BIGNUM ;


 int fprintf (int *,char*,unsigned long) ;

__attribute__((used)) static void
BN_print_fp(FILE *fp, const BIGNUM *num)
{
 fprintf(fp, "%lx", (unsigned long)*num);
}
