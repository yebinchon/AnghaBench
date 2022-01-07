
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 void* malloc (int,int ,int ) ;

__attribute__((used)) static void *
crypto_zalloc(void *nil, u_int type, u_int size)
{
 void *ptr;

 ptr = malloc(type *size, M_CRYPTO_DATA, M_NOWAIT);
 return ptr;
}
