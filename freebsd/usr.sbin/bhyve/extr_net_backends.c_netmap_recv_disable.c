
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv {int mevp; } ;
struct net_backend {scalar_t__ opaque; } ;


 int mevent_disable (int ) ;

__attribute__((used)) static void
netmap_recv_disable(struct net_backend *be)
{
 struct netmap_priv *priv = (struct netmap_priv *)be->opaque;

 mevent_disable(priv->mevp);
}
