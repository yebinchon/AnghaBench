
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_long ;
struct uio {int uio_iovcnt; int uio_rw; int uio_offset; int uio_resid; struct thread* uio_td; void* uio_segflg; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct iovec {int iov_len; int iov_base; } ;
struct iiccmd {int slave; int last; int count; int buf; } ;
struct iic_rdwr_data {int dummy; } ;
struct iic_cdevpriv {int started; int addr; TYPE_1__* sc; } ;
struct cdev {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int sc_dev; } ;


 int EINVAL ;
 int ENOTTY ;
 int IIC_DONTWAIT ;
 int IIC_ENOADDR ;
 int IIC_INTR ;
 int IIC_LOCK (struct iic_cdevpriv*) ;
 int IIC_UNKNOWN ;
 int IIC_UNLOCK (struct iic_cdevpriv*) ;
 int IIC_WAIT ;
 int KASSERT (int ,char*) ;
 int O_NONBLOCK ;
 int UIO_READ ;
 void* UIO_USERSPACE ;
 int UIO_WRITE ;
 int devfs_get_cdevpriv (void**) ;
 int device_get_parent (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_repeated_start (int ,int ,int ) ;
 int iicbus_request_bus (int ,int ,int) ;
 int iicbus_reset (int ,int ,int ,int *) ;
 int iicbus_start (int ,int ,int ) ;
 int iicbus_stop (int ) ;
 int iicrdwr (struct iic_cdevpriv*,struct iic_rdwr_data*,int) ;
 int iicuio_move (struct iic_cdevpriv*,struct uio*,int ) ;

__attribute__((used)) static int
iicioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
 device_t parent, iicdev;
 struct iiccmd *s;
 struct uio ubuf;
 struct iovec uvec;
 struct iic_cdevpriv *priv;
 int error;

 s = (struct iiccmd *)data;
 error = devfs_get_cdevpriv((void**)&priv);
 if (error != 0)
  return (error);

 KASSERT(priv != ((void*)0), ("iic cdevpriv should not be NULL!"));

 iicdev = priv->sc->sc_dev;
 parent = device_get_parent(iicdev);
 IIC_LOCK(priv);


 switch (cmd) {
 case 130:
  if (priv->started) {
   error = EINVAL;
   break;
  }
  error = iicbus_request_bus(parent, iicdev,
      (flags & O_NONBLOCK) ? IIC_DONTWAIT : (IIC_WAIT | IIC_INTR));

  if (error == 0)
   error = iicbus_start(parent, s->slave, 0);

  if (error == 0) {
   priv->addr = s->slave;
   priv->started = 1;
  } else
   iicbus_release_bus(parent, iicdev);

  break;

 case 129:
  if (priv->started) {
   error = iicbus_stop(parent);
   iicbus_release_bus(parent, iicdev);
   priv->started = 0;
  }

  break;

 case 132:





  if (!priv->started)
   error = iicbus_request_bus(parent, iicdev,
       (flags & O_NONBLOCK) ? IIC_DONTWAIT : (IIC_WAIT | IIC_INTR));

  if (error == 0) {
   error = iicbus_reset(parent, IIC_UNKNOWN, 0, ((void*)0));




   if (error == IIC_ENOADDR)
    error = 0;

   iicbus_release_bus(parent, iicdev);
   priv->started = 0;
  }
  break;

 case 128:
  if (!priv->started) {
   error = EINVAL;
   break;
  }
  uvec.iov_base = s->buf;
  uvec.iov_len = s->count;
  ubuf.uio_iov = &uvec;
  ubuf.uio_iovcnt = 1;
  ubuf.uio_segflg = UIO_USERSPACE;
  ubuf.uio_td = td;
  ubuf.uio_resid = s->count;
  ubuf.uio_offset = 0;
  ubuf.uio_rw = UIO_WRITE;
  error = iicuio_move(priv, &ubuf, 0);
  break;

 case 134:
  if (!priv->started) {
   error = EINVAL;
   break;
  }
  uvec.iov_base = s->buf;
  uvec.iov_len = s->count;
  ubuf.uio_iov = &uvec;
  ubuf.uio_iovcnt = 1;
  ubuf.uio_segflg = UIO_USERSPACE;
  ubuf.uio_td = td;
  ubuf.uio_resid = s->count;
  ubuf.uio_offset = 0;
  ubuf.uio_rw = UIO_READ;
  error = iicuio_move(priv, &ubuf, s->last);
  break;

 case 135:




  if (priv->started) {
   error = EINVAL;
   break;
  }

  error = iicrdwr(priv, (struct iic_rdwr_data *)data, flags);

  break;

 case 133:
  if (!priv->started) {
   error = EINVAL;
   break;
  }
  error = iicbus_repeated_start(parent, s->slave, 0);
  break;

 case 131:
  priv->addr = *((uint8_t*)data);
  break;

 default:
  error = ENOTTY;
 }

 IIC_UNLOCK(priv);
 return (error);
}
