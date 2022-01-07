
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;
struct inpcb {int in6p_faddr; } ;


 int ENOTCONN ;
 int KASSERT (int ,char*) ;
 int SS_ISCONNECTED ;
 int in6addr_any ;
 int rip6_abort (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip6_disconnect(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("rip6_disconnect: inp == NULL"));

 if ((so->so_state & SS_ISCONNECTED) == 0)
  return (ENOTCONN);
 inp->in6p_faddr = in6addr_any;
 rip6_abort(so);
 return (0);
}
