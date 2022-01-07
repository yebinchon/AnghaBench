
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_priv {int mevp; } ;
struct net_backend {scalar_t__ opaque; } ;


 int mevent_enable (int ) ;

__attribute__((used)) static void
tap_recv_enable(struct net_backend *be)
{
 struct tap_priv *priv = (struct tap_priv *)be->opaque;

 mevent_enable(priv->mevp);
}
