
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_priv {scalar_t__ mevp; } ;
struct net_backend {int fd; scalar_t__ opaque; } ;


 int close (int) ;
 int mevent_delete (scalar_t__) ;

__attribute__((used)) static void
tap_cleanup(struct net_backend *be)
{
 struct tap_priv *priv = (struct tap_priv *)be->opaque;

 if (priv->mevp) {
  mevent_delete(priv->mevp);
 }
 if (be->fd != -1) {
  close(be->fd);
  be->fd = -1;
 }
}
