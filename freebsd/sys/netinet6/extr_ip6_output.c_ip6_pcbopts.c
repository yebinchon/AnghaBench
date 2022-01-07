
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int * td_ucred; } ;
struct sockopt {struct thread* sopt_td; } ;
struct socket {TYPE_2__* so_proto; } ;
struct mbuf {scalar_t__ m_len; } ;
struct TYPE_3__ {scalar_t__ ip6po_rhi_rthdr; } ;
struct ip6_pktopts {TYPE_1__ ip6po_rhinfo; scalar_t__ ip6po_dest2; scalar_t__ ip6po_dest1; scalar_t__ ip6po_hbh; scalar_t__ ip6po_nexthop; scalar_t__ ip6po_pktinfo; } ;
struct TYPE_4__ {int pr_protocol; } ;


 int M_IP6OPT ;
 int M_WAITOK ;
 int free (struct ip6_pktopts*,int ) ;
 int ip6_clearpktopts (struct ip6_pktopts*,int) ;
 int ip6_setpktopts (struct mbuf*,struct ip6_pktopts*,int *,int *,int ) ;
 struct ip6_pktopts* malloc (int,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
ip6_pcbopts(struct ip6_pktopts **pktopt, struct mbuf *m,
    struct socket *so, struct sockopt *sopt)
{
 struct ip6_pktopts *opt = *pktopt;
 int error = 0;
 struct thread *td = sopt->sopt_td;


 if (opt) {






  ip6_clearpktopts(opt, -1);
 } else
  opt = malloc(sizeof(*opt), M_IP6OPT, M_WAITOK);
 *pktopt = ((void*)0);

 if (!m || m->m_len == 0) {




  free(opt, M_IP6OPT);
  return (0);
 }


 if ((error = ip6_setpktopts(m, opt, ((void*)0), (td != ((void*)0)) ?
     td->td_ucred : ((void*)0), so->so_proto->pr_protocol)) != 0) {
  ip6_clearpktopts(opt, -1);
  free(opt, M_IP6OPT);
  return (error);
 }
 *pktopt = opt;
 return (0);
}
