
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct socket {TYPE_1__* so_proto; } ;
struct pr_usrreqs {int (* pru_abort ) (struct socket*) ;} ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int inp_vflag; int in6p_laddr; int in6p_faddr; TYPE_3__* inp_socket; } ;
struct TYPE_8__ {struct pr_usrreqs* pr_usrreqs; } ;
struct TYPE_7__ {TYPE_2__* so_proto; } ;
struct TYPE_6__ {scalar_t__ pr_protocol; } ;
struct TYPE_5__ {int pr_protocol; } ;


 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INP_HASH_WLOCK (struct inpcbinfo*) ;
 int INP_HASH_WUNLOCK (struct inpcbinfo*) ;
 int INP_IPV4 ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ IPPROTO_UDPLITE ;
 int KASSERT (int ,char*) ;
 int in6_pcbdisconnect (struct inpcb*) ;
 int in6addr_any ;
 TYPE_4__* inetsw ;
 size_t* ip_protox ;
 int soisdisconnected (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct socket*) ;
 struct inpcbinfo* udp_get_inpcbinfo (int ) ;

__attribute__((used)) static void
udp6_abort(struct socket *so)
{
 struct inpcb *inp;
 struct inpcbinfo *pcbinfo;

 pcbinfo = udp_get_inpcbinfo(so->so_proto->pr_protocol);
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("udp6_abort: inp == NULL"));

 INP_WLOCK(inp);
 if (!IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_faddr)) {
  INP_HASH_WLOCK(pcbinfo);
  in6_pcbdisconnect(inp);
  inp->in6p_laddr = in6addr_any;
  INP_HASH_WUNLOCK(pcbinfo);
  soisdisconnected(so);
 }
 INP_WUNLOCK(inp);
}
