
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cyapa_cdevpriv {TYPE_1__* sc; } ;
struct cdev {TYPE_1__* si_drv1; } ;
struct TYPE_3__ {int count; } ;


 int M_CYAPA ;
 int M_WAITOK ;
 int M_ZERO ;
 int cyapa_cdevpriv_dtor ;
 int cyapa_lock (TYPE_1__*) ;
 int cyapa_unlock (TYPE_1__*) ;
 int devfs_set_cdevpriv (struct cyapa_cdevpriv*,int ) ;
 int free (struct cyapa_cdevpriv*,int ) ;
 struct cyapa_cdevpriv* malloc (int,int ,int) ;

__attribute__((used)) static int
cyapaopen(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct cyapa_cdevpriv *priv;
 int error;

 priv = malloc(sizeof(*priv), M_CYAPA, M_WAITOK | M_ZERO);
 priv->sc = dev->si_drv1;

 error = devfs_set_cdevpriv(priv, cyapa_cdevpriv_dtor);
 if (error == 0) {
  cyapa_lock(priv->sc);
  priv->sc->count++;
  cyapa_unlock(priv->sc);
 }
 else
  free(priv, M_CYAPA);

 return (error);
}
