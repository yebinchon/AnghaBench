
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rcv; } ;


 int soaio_process_sb (struct socket*,int *) ;

void
soaio_rcv(void *context, int pending)
{
 struct socket *so;

 so = context;
 soaio_process_sb(so, &so->so_rcv);
}
