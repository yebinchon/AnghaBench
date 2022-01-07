
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;


 int EINVAL ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;

int
solisten_proto_check(struct socket *so)
{

 SOCK_LOCK_ASSERT(so);

 if (so->so_state & (SS_ISCONNECTED | SS_ISCONNECTING |
     SS_ISDISCONNECTING))
  return (EINVAL);
 return (0);
}
