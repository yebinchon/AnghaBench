
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int camellia_ctx ;


 int KFREE (int *,int ) ;
 int M_CRYPTO_DATA ;
 int bzero (int *,int) ;

__attribute__((used)) static void
cml_zerokey(u_int8_t **sched)
{
 bzero(*sched, sizeof(camellia_ctx));
 KFREE(*sched, M_CRYPTO_DATA);
 *sched = ((void*)0);
}
