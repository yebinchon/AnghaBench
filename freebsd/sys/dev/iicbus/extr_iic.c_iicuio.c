
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct uio {scalar_t__ uio_rw; } ;
struct iic_cdevpriv {int addr; TYPE_1__* sc; scalar_t__ started; } ;
struct cdev {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int sc_dev; } ;


 int ENXIO ;
 int IIC_DONTWAIT ;
 int IIC_INTR ;
 int IIC_LAST_READ ;
 int IIC_LOCK (struct iic_cdevpriv*) ;
 int IIC_UNLOCK (struct iic_cdevpriv*) ;
 int IIC_WAIT ;
 int KASSERT (int ,char*) ;
 int LSB ;
 int O_NONBLOCK ;
 scalar_t__ UIO_READ ;
 int devfs_get_cdevpriv (void**) ;
 int device_get_parent (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int) ;
 int iicbus_start (int ,int,int ) ;
 int iicbus_stop (int ) ;
 int iicuio_move (struct iic_cdevpriv*,struct uio*,int ) ;

__attribute__((used)) static int
iicuio(struct cdev *dev, struct uio *uio, int ioflag)
{
 device_t parent;
 struct iic_cdevpriv *priv;
 int error;
 uint8_t addr;

 priv = ((void*)0);
 error = devfs_get_cdevpriv((void**)&priv);

 if (error != 0)
  return (error);
 KASSERT(priv != ((void*)0), ("iic cdevpriv should not be NULL!"));

 IIC_LOCK(priv);
 if (priv->started || (priv->addr == 0)) {
  IIC_UNLOCK(priv);
  return (ENXIO);
 }
 parent = device_get_parent(priv->sc->sc_dev);

 error = iicbus_request_bus(parent, priv->sc->sc_dev,
     (ioflag & O_NONBLOCK) ? IIC_DONTWAIT : (IIC_WAIT | IIC_INTR));
 if (error != 0) {
  IIC_UNLOCK(priv);
  return (error);
 }

 if (uio->uio_rw == UIO_READ)
  addr = priv->addr | LSB;
 else
  addr = priv->addr & ~LSB;

 error = iicbus_start(parent, addr, 0);
 if (error != 0)
 {
  iicbus_release_bus(parent, priv->sc->sc_dev);
  IIC_UNLOCK(priv);
  return (error);
 }

 error = iicuio_move(priv, uio, IIC_LAST_READ);

 iicbus_stop(parent);
 iicbus_release_bus(parent, priv->sc->sc_dev);
 IIC_UNLOCK(priv);
 return (error);
}
