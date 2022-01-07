
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {int cipher; } ;




 char* alloc_buffer (size_t) ;

__attribute__((used)) static char *
generate_iv(size_t len, struct alg *alg)
{
 char *iv;

 iv = alloc_buffer(len);
 switch (alg->cipher) {
 case 129:

  iv[len - 4] = 0;
  iv[len - 3] = 0;
  iv[len - 2] = 0;
  iv[len - 1] = 0;
  break;
 case 128:




  iv[len - 8] = 0;
  iv[len - 7] = 0;
  iv[len - 6] = 0;
  iv[len - 5] = 0;
  iv[len - 4] = 0;
  iv[len - 3] = 0;
  iv[len - 2] = 0;
  iv[len - 1] = 0;
  break;
 }
 return (iv);
}
