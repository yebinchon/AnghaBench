
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_snd; } ;


 int SOCKBUF_UNLOCK_ASSERT (int *) ;
 int SOCK_UNLOCK_ASSERT (struct socket*) ;
 scalar_t__ SOLISTENING (struct socket*) ;

__attribute__((used)) static void
so_wrknl_assert_unlocked(void *arg)
{
 struct socket *so = arg;

 if (SOLISTENING(so))
  SOCK_UNLOCK_ASSERT(so);
 else
  SOCKBUF_UNLOCK_ASSERT(&so->so_snd);
}
