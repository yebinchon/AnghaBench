
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ifq_maxlen; int ifq_mtx; } ;
struct TYPE_5__ {int ifq_maxlen; int ifq_mtx; } ;
struct sppp {int pp_comp; int if_start; int ifstart_callout; int confflags; int pp_last_sent; int pp_last_recv; TYPE_3__ pp_fastq; TYPE_2__ pp_cpq; int pp_down; int pp_up; int pp_phase; int * pp_rseq; int * pp_seq; scalar_t__ pp_alivecnt; scalar_t__ pp_loopcnt; int pp_flags; int keepalive_callout; int mtx; } ;
struct slcompress {int dummy; } ;
struct TYPE_4__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; int if_start; TYPE_1__ if_snd; int if_output; int if_mtu; } ;


 int CONF_ENABLE_IPV6 ;
 int CONF_ENABLE_VJ ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 struct sppp* IFP2SP (struct ifnet*) ;
 int MTX_DEF ;
 int * MTX_NETWORK_LOCK ;
 int MTX_RECURSE ;
 int M_TEMP ;
 int M_WAITOK ;
 int PHASE_DEAD ;
 int PP_KEEPALIVE ;
 int PP_MTU ;
 int bzero (int *,int) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,void*) ;
 int hz ;
 int malloc (int,int ,int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_initialized (int *) ;
 int sl_compress_init (int ,int) ;
 int sppp_chap_init (struct sppp*) ;
 int sppp_ifstart ;
 int sppp_ipcp_init (struct sppp*) ;
 int sppp_ipv6cp_init (struct sppp*) ;
 int sppp_keepalive ;
 int sppp_lcp_init (struct sppp*) ;
 int sppp_output ;
 int sppp_pap_init (struct sppp*) ;
 int sppp_pp_down ;
 int sppp_pp_up ;
 int time_uptime ;

void
sppp_attach(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);


 mtx_init(&sp->mtx, "sppp", MTX_NETWORK_LOCK, MTX_DEF | MTX_RECURSE);


  callout_init(&sp->keepalive_callout, 1);
 callout_reset(&sp->keepalive_callout, hz * 10, sppp_keepalive,
       (void *)sp);

 ifp->if_mtu = PP_MTU;
 ifp->if_flags = IFF_POINTOPOINT | IFF_MULTICAST;
 ifp->if_output = sppp_output;



  ifp->if_snd.ifq_maxlen = 32;
  sp->pp_fastq.ifq_maxlen = 32;
  sp->pp_cpq.ifq_maxlen = 20;
 sp->pp_loopcnt = 0;
 sp->pp_alivecnt = 0;
 bzero(&sp->pp_seq[0], sizeof(sp->pp_seq));
 bzero(&sp->pp_rseq[0], sizeof(sp->pp_rseq));
 sp->pp_phase = PHASE_DEAD;
 sp->pp_up = sppp_pp_up;
 sp->pp_down = sppp_pp_down;
 if(!mtx_initialized(&sp->pp_cpq.ifq_mtx))
  mtx_init(&sp->pp_cpq.ifq_mtx, "sppp_cpq", ((void*)0), MTX_DEF);
 if(!mtx_initialized(&sp->pp_fastq.ifq_mtx))
  mtx_init(&sp->pp_fastq.ifq_mtx, "sppp_fastq", ((void*)0), MTX_DEF);
 sp->pp_last_recv = sp->pp_last_sent = time_uptime;
 sp->confflags = 0;






  callout_init(&sp->ifstart_callout, 1);
 sp->if_start = ifp->if_start;
 ifp->if_start = sppp_ifstart;
 sp->pp_comp = malloc(sizeof(struct slcompress), M_TEMP, M_WAITOK);
 sl_compress_init(sp->pp_comp, -1);
 sppp_lcp_init(sp);
 sppp_ipcp_init(sp);
 sppp_ipv6cp_init(sp);
 sppp_pap_init(sp);
 sppp_chap_init(sp);
}
