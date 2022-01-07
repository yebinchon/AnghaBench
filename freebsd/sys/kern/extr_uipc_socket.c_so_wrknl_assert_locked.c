
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_snd; } ;


 int SOCKBUF_LOCK_ASSERT (int *) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 scalar_t__ SOLISTENING (struct socket*) ;

__attribute__((used)) static void
so_wrknl_assert_locked(void *arg)
{
 struct socket *so = arg;

 if (SOLISTENING(so))
  SOCK_LOCK_ASSERT(so);
 else
  SOCKBUF_LOCK_ASSERT(&so->so_snd);
}
