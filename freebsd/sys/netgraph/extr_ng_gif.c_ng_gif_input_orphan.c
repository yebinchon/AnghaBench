
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int lowerOrphan; int * lower; } ;


 int IFP2NG (struct ifnet*) ;
 TYPE_1__* NG_NODE_PRIVATE (int const) ;
 int m_freem (struct mbuf*) ;
 int ng_gif_input2 (int const,struct mbuf**,int) ;

__attribute__((used)) static void
ng_gif_input_orphan(struct ifnet *ifp, struct mbuf *m, int af)
{
 const node_p node = IFP2NG(ifp);
 const priv_p priv = NG_NODE_PRIVATE(node);


 if (priv->lower == ((void*)0) || !priv->lowerOrphan) {
  m_freem(m);
  return;
 }
 ng_gif_input2(node, &m, af);
 if (m != ((void*)0))
  m_freem(m);
}
