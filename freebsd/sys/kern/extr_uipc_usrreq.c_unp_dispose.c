
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpcb {int unp_gcflag; } ;
struct TYPE_2__ {int sb_mb; } ;
struct socket {TYPE_1__ so_rcv; } ;


 int SOLISTENING (struct socket*) ;
 int UNPGC_IGNORE_RIGHTS ;
 int UNP_LINK_WLOCK () ;
 int UNP_LINK_WUNLOCK () ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_dispose_mbuf (int ) ;

__attribute__((used)) static void
unp_dispose(struct socket *so)
{
 struct unpcb *unp;

 unp = sotounpcb(so);
 UNP_LINK_WLOCK();
 unp->unp_gcflag |= UNPGC_IGNORE_RIGHTS;
 UNP_LINK_WUNLOCK();
 if (!SOLISTENING(so))
  unp_dispose_mbuf(so->so_rcv.sb_mb);
}
