
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv {scalar_t__ nmd; scalar_t__ mevp; } ;
struct net_backend {int fd; scalar_t__ opaque; } ;


 int mevent_delete (scalar_t__) ;
 int nm_close (scalar_t__) ;

__attribute__((used)) static void
netmap_cleanup(struct net_backend *be)
{
 struct netmap_priv *priv = (struct netmap_priv *)be->opaque;

 if (priv->mevp) {
  mevent_delete(priv->mevp);
 }
 if (priv->nmd) {
  nm_close(priv->nmd);
 }
 be->fd = -1;
}
