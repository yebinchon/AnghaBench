
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_moptions {int im6o_head; int im6o_multicast_loop; int im6o_multicast_hlim; int * im6o_multicast_ifp; } ;
struct inpcb {struct ip6_moptions* in6p_moptions; } ;


 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int M_IP6MOPTS ;
 int M_WAITOK ;
 int STAILQ_INIT (int *) ;
 int V_ip6_defmcasthlim ;
 int free (struct ip6_moptions*,int ) ;
 int in6_mcast_loop ;
 struct ip6_moptions* malloc (int,int ,int ) ;

__attribute__((used)) static struct ip6_moptions *
in6p_findmoptions(struct inpcb *inp)
{
 struct ip6_moptions *imo;

 INP_WLOCK(inp);
 if (inp->in6p_moptions != ((void*)0))
  return (inp->in6p_moptions);

 INP_WUNLOCK(inp);

 imo = malloc(sizeof(*imo), M_IP6MOPTS, M_WAITOK);

 imo->im6o_multicast_ifp = ((void*)0);
 imo->im6o_multicast_hlim = V_ip6_defmcasthlim;
 imo->im6o_multicast_loop = in6_mcast_loop;
 STAILQ_INIT(&imo->im6o_head);

 INP_WLOCK(inp);
 if (inp->in6p_moptions != ((void*)0)) {
  free(imo, M_IP6MOPTS);
  return (inp->in6p_moptions);
 }
 inp->in6p_moptions = imo;
 return (imo);
}
