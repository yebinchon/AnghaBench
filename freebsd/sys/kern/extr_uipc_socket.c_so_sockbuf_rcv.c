
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct socket {struct sockbuf so_rcv; } ;



struct sockbuf *
so_sockbuf_rcv(struct socket *so)
{

 return (&so->so_rcv);
}
