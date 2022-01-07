
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_6__ {int xmtx; int rmtx; int fragTimer; TYPE_1__* links; int * fragsmem; int fragsfree; int frags; } ;
struct TYPE_5__ {int seq; } ;


 int MP_MAX_QUEUE_LEN ;
 int MP_NOSEQ ;
 int MTX_DEF ;
 int M_NETGRAPH_PPP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_2__*) ;
 int NG_PPP_MAX_LINKS ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int f_qent ;
 TYPE_2__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ng_callout_init (int *) ;

__attribute__((used)) static int
ng_ppp_constructor(node_p node)
{
 priv_p priv;
 int i;


 priv = malloc(sizeof(*priv), M_NETGRAPH_PPP, M_WAITOK | M_ZERO);

 NG_NODE_SET_PRIVATE(node, priv);


 TAILQ_INIT(&priv->frags);
 TAILQ_INIT(&priv->fragsfree);
 for (i = 0; i < MP_MAX_QUEUE_LEN; i++)
  TAILQ_INSERT_TAIL(&priv->fragsfree, &priv->fragsmem[i], f_qent);
 for (i = 0; i < NG_PPP_MAX_LINKS; i++)
  priv->links[i].seq = MP_NOSEQ;
 ng_callout_init(&priv->fragTimer);

 mtx_init(&priv->rmtx, "ng_ppp_recv", ((void*)0), MTX_DEF);
 mtx_init(&priv->xmtx, "ng_ppp_xmit", ((void*)0), MTX_DEF);


 return (0);
}
