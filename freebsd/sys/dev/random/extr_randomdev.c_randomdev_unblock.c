
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC4_ENTR_HAVE ;
 int ARC4_ENTR_NONE ;
 int PUSER ;
 int arc4rand_iniseed_state ;
 int atomic_cmpset_int (int *,int ,int ) ;
 int printf (char*) ;
 int random_alg_context ;
 int rsel ;
 int selwakeuppri (int *,int ) ;
 int wakeup (int *) ;

void
randomdev_unblock(void)
{

 selwakeuppri(&rsel, PUSER);
 wakeup(&random_alg_context);
 printf("random: unblocking device.\n");

 (void)atomic_cmpset_int(&arc4rand_iniseed_state, ARC4_ENTR_NONE, ARC4_ENTR_HAVE);
}
