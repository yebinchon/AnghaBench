
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_bn2lebinpad (int const*,void*,int) ;
 int BN_num_bytes (int const*) ;
 int ERR_print_errors_fp (int ) ;
 int free (void*) ;
 void* malloc (int) ;
 int stderr ;

__attribute__((used)) static void *
bignum_to_le(const BIGNUM *n)
{
 int blen, error;
 void *rd;

 blen = BN_num_bytes(n);
 if (blen == 0)
  return (((void*)0));

 rd = malloc(blen);
 if (rd == ((void*)0))
  return (((void*)0));

 error = BN_bn2lebinpad(n, rd, blen);
 if (error < 0) {
  ERR_print_errors_fp(stderr);
  free(rd);
  return (((void*)0));
 }

 return (rd);
}
