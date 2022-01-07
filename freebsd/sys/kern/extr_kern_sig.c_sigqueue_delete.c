
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int sigqueue_t ;


 int SIGADDSET (int ,int) ;
 int SIGEMPTYSET (int ) ;
 int sigqueue_delete_set (int *,int *) ;

void
sigqueue_delete(sigqueue_t *sq, int signo)
{
 sigset_t set;

 SIGEMPTYSET(set);
 SIGADDSET(set, signo);
 sigqueue_delete_set(sq, &set);
}
