
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct socket {struct sockbuf so_rcv; } ;


 int soreadable (struct socket*) ;
 int sowriteable (struct socket*) ;

__attribute__((used)) static __inline int
soaio_ready(struct socket *so, struct sockbuf *sb)
{
 return (sb == &so->so_rcv ? soreadable(so) : sowriteable(so));
}
