
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_path {scalar_t__ ah; int queue; } ;
struct ipoib_dev_priv {int dummy; } ;


 int _IF_DRAIN (int *) ;
 int ipoib_cm_destroy_tx (scalar_t__) ;
 scalar_t__ ipoib_cm_get (struct ipoib_path*) ;
 int ipoib_put_ah (scalar_t__) ;
 int kfree (struct ipoib_path*) ;

void
ipoib_path_free(struct ipoib_dev_priv *priv, struct ipoib_path *path)
{

 _IF_DRAIN(&path->queue);

 if (path->ah)
  ipoib_put_ah(path->ah);
 if (ipoib_cm_get(path))
  ipoib_cm_destroy_tx(ipoib_cm_get(path));

 kfree(path);
}
