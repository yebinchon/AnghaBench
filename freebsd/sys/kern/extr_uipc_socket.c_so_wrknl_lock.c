
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_snd; } ;


 int SOCKBUF_LOCK (int *) ;
 int SOCK_LOCK (struct socket*) ;
 scalar_t__ SOLISTENING (struct socket*) ;

__attribute__((used)) static void
so_wrknl_lock(void *arg)
{
 struct socket *so = arg;

 if (SOLISTENING(so))
  SOCK_LOCK(so);
 else
  SOCKBUF_LOCK(&so->so_snd);
}
