
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sscop {int dummy; } ;
struct TYPE_2__ {int out_packets; int out_dropped; } ;
struct priv {int * lower; TYPE_1__ stats; } ;
struct mbuf {int dummy; } ;
typedef int node_p ;


 struct priv* NG_NODE_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
sscop_send_lower(struct sscop *sscop, void *p, struct mbuf *m)
{
 node_p node = (node_p)p;
 struct priv *priv = NG_NODE_PRIVATE(node);
 int error;

 if (priv->lower == ((void*)0)) {
  m_freem(m);
  priv->stats.out_dropped++;
  return;
 }

 priv->stats.out_packets++;
 NG_SEND_DATA_ONLY(error, priv->lower, m);
}
