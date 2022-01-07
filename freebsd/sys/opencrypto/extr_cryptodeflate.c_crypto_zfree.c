
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_CRYPTO_DATA ;
 int free (void*,int ) ;

__attribute__((used)) static void
crypto_zfree(void *nil, void *ptr)
{

 free(ptr, M_CRYPTO_DATA);
}
