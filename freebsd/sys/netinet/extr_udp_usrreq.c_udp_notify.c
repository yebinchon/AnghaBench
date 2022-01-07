
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtentry {int dummy; } ;
struct TYPE_4__ {struct rtentry* ro_rt; } ;
struct inpcb {TYPE_2__* inp_socket; TYPE_1__ inp_route; } ;
struct TYPE_5__ {int so_error; } ;


 int EHOSTDOWN ;
 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int RTFREE (struct rtentry*) ;
 int sorwakeup (TYPE_2__*) ;
 int sowwakeup (TYPE_2__*) ;

struct inpcb *
udp_notify(struct inpcb *inp, int errno)
{

 INP_WLOCK_ASSERT(inp);
 if ((errno == EHOSTUNREACH || errno == ENETUNREACH ||
      errno == EHOSTDOWN) && inp->inp_route.ro_rt) {
  RTFREE(inp->inp_route.ro_rt);
  inp->inp_route.ro_rt = (struct rtentry *)((void*)0);
 }

 inp->inp_socket->so_error = errno;
 sorwakeup(inp->inp_socket);
 sowwakeup(inp->inp_socket);
 return (inp);
}
