
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int KFREE (int *,int ) ;
 int M_CRYPTO_DATA ;
 int bzero (int *,int) ;

__attribute__((used)) static void
skipjack_zerokey(u_int8_t **sched)
{
 bzero(*sched, 10 * (sizeof(u_int8_t *) + 0x100));
 KFREE(*sched, M_CRYPTO_DATA);
 *sched = ((void*)0);
}
