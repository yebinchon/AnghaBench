
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; int so_fibnum; int so_cred; } ;
struct inpcbinfo {int ipi_zone; scalar_t__ ipi_gencnt; int ipi_count; int ipi_listhead; } ;
struct TYPE_4__ {int ro_flags; } ;
struct TYPE_3__ {int inc_fibnum; } ;
struct inpcb {int inp_cred; TYPE_2__ inp_route; int inp_refcount; scalar_t__ inp_gencnt; int inp_flags; int inp_vflag; TYPE_1__ inp_inc; struct socket* inp_socket; struct inpcbinfo* inp_pcbinfo; int inp_numa_domain; int inp_start_zero; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ AF_INET6 ;
 int CK_LIST_INSERT_HEAD (int ,struct inpcb*,int ) ;
 int ENOBUFS ;
 int IN6P_AUTOFLOWLABEL ;
 int IN6P_IPV6_V6ONLY ;
 int INP_INFO_WLOCK_ASSERT (struct inpcbinfo*) ;
 int INP_IPV6PROTO ;
 int INP_LIST_WLOCK (struct inpcbinfo*) ;
 int INP_LIST_WUNLOCK (struct inpcbinfo*) ;
 scalar_t__ INP_SOCKAF (struct socket*) ;
 int INP_WLOCK (struct inpcb*) ;
 int M_NODOM ;
 int M_NOWAIT ;
 int NET_EPOCH_ASSERT () ;
 int RT_LLE_CACHE ;
 scalar_t__ V_ip6_auto_flowlabel ;
 scalar_t__ V_ip6_v6only ;
 struct inpcbinfo V_tcbinfo ;
 int bzero (int *,int ) ;
 int crfree (int ) ;
 int crhold (int ) ;
 int inp_list ;
 int inp_zero_size ;
 int ipsec_init_pcbpolicy (struct inpcb*) ;
 int mac_inpcb_create (struct socket*,struct inpcb*) ;
 int mac_inpcb_destroy (struct inpcb*) ;
 int mac_inpcb_init (struct inpcb*,int ) ;
 int refcount_init (int *,int) ;
 struct inpcb* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct inpcb*) ;

int
in_pcballoc(struct socket *so, struct inpcbinfo *pcbinfo)
{
 struct inpcb *inp;
 int error;
 error = 0;
 inp = uma_zalloc(pcbinfo->ipi_zone, M_NOWAIT);
 if (inp == ((void*)0))
  return (ENOBUFS);
 bzero(&inp->inp_start_zero, inp_zero_size);



 inp->inp_pcbinfo = pcbinfo;
 inp->inp_socket = so;
 inp->inp_cred = crhold(so->so_cred);
 inp->inp_inc.inc_fibnum = so->so_fibnum;
 INP_WLOCK(inp);
 INP_LIST_WLOCK(pcbinfo);
 CK_LIST_INSERT_HEAD(pcbinfo->ipi_listhead, inp, inp_list);
 pcbinfo->ipi_count++;
 so->so_pcb = (caddr_t)inp;




 inp->inp_gencnt = ++pcbinfo->ipi_gencnt;
 refcount_init(&inp->inp_refcount, 1);





 inp->inp_route.ro_flags = RT_LLE_CACHE;
 INP_LIST_WUNLOCK(pcbinfo);







 return (error);
}
