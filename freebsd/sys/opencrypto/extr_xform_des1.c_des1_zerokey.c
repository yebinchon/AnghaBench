
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int des_key_schedule ;


 int KFREE (int *,int ) ;
 int M_CRYPTO_DATA ;
 int bzero (int *,int) ;

__attribute__((used)) static void
des1_zerokey(u_int8_t **sched)
{
 bzero(*sched, sizeof (des_key_schedule));
 KFREE(*sched, M_CRYPTO_DATA);
 *sched = ((void*)0);
}
