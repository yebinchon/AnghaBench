
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct iic_cdevpriv {int sc; int lock; } ;
struct cdev {int si_drv1; } ;


 int M_IIC ;
 int M_WAITOK ;
 int M_ZERO ;
 int devfs_set_cdevpriv (struct iic_cdevpriv*,int ) ;
 int free (struct iic_cdevpriv*,int ) ;
 int iicdtor ;
 struct iic_cdevpriv* malloc (int,int ,int) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
iicopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct iic_cdevpriv *priv;
 int error;

 priv = malloc(sizeof(*priv), M_IIC, M_WAITOK | M_ZERO);

 sx_init(&priv->lock, "iic");
 priv->sc = dev->si_drv1;

 error = devfs_set_cdevpriv(priv, iicdtor);
 if (error != 0)
  free(priv, M_IIC);

 return (error);
}
