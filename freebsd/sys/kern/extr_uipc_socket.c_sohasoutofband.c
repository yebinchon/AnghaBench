
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rdsel; int * so_sigio; } ;


 int PSOCK ;
 int SIGURG ;
 int pgsigio (int **,int ,int ) ;
 int selwakeuppri (int *,int ) ;

void
sohasoutofband(struct socket *so)
{

 if (so->so_sigio != ((void*)0))
  pgsigio(&so->so_sigio, SIGURG, 0);
 selwakeuppri(&so->so_rdsel, PSOCK);
}
