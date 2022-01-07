
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int lower; } ;


 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 int ng_gif_glue_af (struct mbuf**,int) ;

__attribute__((used)) static void
ng_gif_input2(node_p node, struct mbuf **mp, int af)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int error;


 if ((error = ng_gif_glue_af(mp, af)) != 0)
  return;


 NG_SEND_DATA_ONLY(error, priv->lower, *mp);
 *mp = ((void*)0);
}
