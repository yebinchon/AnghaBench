
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int trm; scalar_t__ ppp; } ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int SIGUSR1 ;
 int pthread_kill (int ,int ) ;
 int select (scalar_t__,int *,int *,int *,int *) ;
 int sem_select ;
 int sem_wait (int *) ;
 int timetogo ;

__attribute__((used)) static void *
Monitor(void *v)
{
    struct thread_data *td;
    fd_set f;
    int ret;

    td = (struct thread_data *)v;
    FD_ZERO(&f);
    FD_SET(td->ppp, &f);

    sem_wait(&sem_select);
    while (!timetogo)
        if ((ret = select(td->ppp + 1, &f, ((void*)0), ((void*)0), ((void*)0))) > 0) {
            pthread_kill(td->trm, SIGUSR1);
            sem_wait(&sem_select);
        }

    return ((void*)0);
}
