
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mtx_trylock (int *) ;
 int printf (char*) ;
 int random_reseed_mtx ;
 scalar_t__ thrd_busy ;
 int thrd_exit (int ) ;

void
randomdev_unblock(void)
{
 printf("random: unblocking device.\n");
}
