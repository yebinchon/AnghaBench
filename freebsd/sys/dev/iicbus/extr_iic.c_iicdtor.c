
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iic_cdevpriv {int lock; scalar_t__ started; TYPE_1__* sc; } ;
typedef int device_t ;
struct TYPE_2__ {int sc_dev; } ;


 int IIC_UNKNOWN ;
 int KASSERT (int ,char*) ;
 int M_IIC ;
 int device_get_parent (int ) ;
 int free (struct iic_cdevpriv*,int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_reset (int ,int ,int ,int *) ;
 int iicbus_stop (int ) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
iicdtor(void *data)
{
 device_t iicdev, parent;
 struct iic_cdevpriv *priv;

 priv = data;
 KASSERT(priv != ((void*)0), ("iic cdevpriv should not be NULL!"));

 iicdev = priv->sc->sc_dev;
 parent = device_get_parent(iicdev);

 if (priv->started) {
  iicbus_stop(parent);
  iicbus_reset(parent, IIC_UNKNOWN, 0, ((void*)0));
  iicbus_release_bus(parent, iicdev);
 }

 sx_destroy(&priv->lock);
 free(priv, M_IIC);
}
