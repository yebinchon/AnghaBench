
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct ip_moptions {int imo_multicast_vif; int imo_head; int imo_multicast_loop; int imo_multicast_ttl; TYPE_1__ imo_multicast_addr; int * imo_multicast_ifp; } ;
struct inpcb {struct ip_moptions* inp_moptions; } ;


 int INADDR_ANY ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int IP_DEFAULT_MULTICAST_TTL ;
 int M_IPMOPTS ;
 int M_WAITOK ;
 int STAILQ_INIT (int *) ;
 int free (struct ip_moptions*,int ) ;
 int in_mcast_loop ;
 struct ip_moptions* malloc (int,int ,int ) ;

__attribute__((used)) static struct ip_moptions *
inp_findmoptions(struct inpcb *inp)
{
 struct ip_moptions *imo;

 INP_WLOCK(inp);
 if (inp->inp_moptions != ((void*)0))
  return (inp->inp_moptions);

 INP_WUNLOCK(inp);

 imo = malloc(sizeof(*imo), M_IPMOPTS, M_WAITOK);

 imo->imo_multicast_ifp = ((void*)0);
 imo->imo_multicast_addr.s_addr = INADDR_ANY;
 imo->imo_multicast_vif = -1;
 imo->imo_multicast_ttl = IP_DEFAULT_MULTICAST_TTL;
 imo->imo_multicast_loop = in_mcast_loop;
 STAILQ_INIT(&imo->imo_head);

 INP_WLOCK(inp);
 if (inp->inp_moptions != ((void*)0)) {
  free(imo, M_IPMOPTS);
  return (inp->inp_moptions);
 }
 inp->inp_moptions = imo;
 return (imo);
}
