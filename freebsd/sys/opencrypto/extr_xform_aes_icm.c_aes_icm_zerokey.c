
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_icm_ctx {int dummy; } ;


 int KFREE (int *,int ) ;
 int M_CRYPTO_DATA ;
 int bzero (int *,int) ;

__attribute__((used)) static void
aes_icm_zerokey(u_int8_t **sched)
{

 bzero(*sched, sizeof(struct aes_icm_ctx));
 KFREE(*sched, M_CRYPTO_DATA);
 *sched = ((void*)0);
}
