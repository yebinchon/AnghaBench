
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rcv; } ;


 int SOCKBUF_UNLOCK (int *) ;
 int SOCK_UNLOCK (struct socket*) ;
 scalar_t__ SOLISTENING (struct socket*) ;

__attribute__((used)) static void
so_rdknl_unlock(void *arg)
{
 struct socket *so = arg;

 if (SOLISTENING(so))
  SOCK_UNLOCK(so);
 else
  SOCKBUF_UNLOCK(&so->so_rcv);
}
