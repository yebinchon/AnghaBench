
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngsock {int error; int mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ngsock* const) ;

__attribute__((used)) static void
ng_socket_item_applied(void *context, int error)
{
 struct ngsock *const priv = (struct ngsock *)context;

 mtx_lock(&priv->mtx);
 priv->error = error;
 wakeup(priv);
 mtx_unlock(&priv->mtx);

}
