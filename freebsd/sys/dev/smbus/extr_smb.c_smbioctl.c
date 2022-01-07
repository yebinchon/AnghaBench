
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef void* u_char ;
struct thread {int dummy; } ;
struct TYPE_4__ {char byte; int word; } ;
struct TYPE_3__ {int word; int byte; } ;
struct smbcmd {int slave; int rcount; int wcount; int rbuf; int cmd; int wbuf; TYPE_2__ rdata; TYPE_1__ wdata; } ;
struct smb_softc {int sc_dev; } ;
struct cdev {struct smb_softc* si_drv1; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOTTY ;
 int O_NONBLOCK ;


 int SMB_DONTWAIT ;
 int SMB_INTR ;
 int SMB_MAXBLOCKSIZE ;




 int SMB_QREAD ;


 int SMB_QWRITE ;




 int SMB_WAIT ;


 int copyin (int ,char*,int) ;
 int copyout (char*,int ,int) ;
 int dev2unit (struct cdev*) ;
 int device_get_parent (int ) ;
 int smbus_bread (int ,int,int ,void**,char*) ;
 int smbus_bwrite (int ,int,int ,int,char*) ;
 int smbus_error (int ) ;
 int smbus_pcall (int ,int,int ,int ,int*) ;
 int smbus_quick (int ,int,int ) ;
 int smbus_readb (int ,int,int ,char*) ;
 int smbus_readw (int ,int,int ,int*) ;
 int smbus_recvb (int ,int,int *) ;
 int smbus_release_bus (int ,int ) ;
 int smbus_request_bus (int ,int ,int) ;
 int smbus_sendb (int ,int,int ) ;
 int smbus_writeb (int ,int,int ,int ) ;
 int smbus_writew (int ,int,int ,int ) ;

__attribute__((used)) static int
smbioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
 char buf[SMB_MAXBLOCKSIZE];
 device_t parent;
 struct smbcmd *s = (struct smbcmd *)data;
 struct smb_softc *sc = dev->si_drv1;
 device_t smbdev = sc->sc_dev;
 int error;
 int unit;
 u_char bcount;





 unit = dev2unit(dev);
 if (unit & 0x0400)
  s->slave = unit & 0x03ff;

 parent = device_get_parent(smbdev);


 if (s->slave & 0x1)
  return (EINVAL);


 if ((error = smbus_request_bus(parent, smbdev,
   (flags & O_NONBLOCK) ? SMB_DONTWAIT : (SMB_WAIT | SMB_INTR))))
  return (error);

 switch (cmd) {
 case 134:
  error = smbus_error(smbus_quick(parent, s->slave, SMB_QWRITE));
  break;

 case 135:
  error = smbus_error(smbus_quick(parent, s->slave, SMB_QREAD));
  break;

 case 130:
  error = smbus_error(smbus_sendb(parent, s->slave, s->cmd));
  break;

 case 131:
  error = smbus_error(smbus_recvb(parent, s->slave, &s->cmd));
  break;

 case 129:
  error = smbus_error(smbus_writeb(parent, s->slave, s->cmd,
      s->wdata.byte));
  break;

 case 128:
  error = smbus_error(smbus_writew(parent, s->slave,
      s->cmd, s->wdata.word));
  break;

 case 138:
 case 133:

  error = smbus_error(smbus_readb(parent, s->slave, s->cmd,
      &s->rdata.byte));
  if (error)
   break;
  if (s->rbuf && s->rcount >= 1) {
   error = copyout(&s->rdata.byte, s->rbuf, 1);
   s->rcount = 1;
  }
  break;

 case 137:
 case 132:

  error = smbus_error(smbus_readw(parent, s->slave, s->cmd,
      &s->rdata.word));
  if (error)
   break;
  if (s->rbuf && s->rcount >= 2) {
   buf[0] = (u_char)s->rdata.word;
   buf[1] = (u_char)(s->rdata.word >> 8);
   error = copyout(buf, s->rbuf, 2);
   s->rcount = 2;
  }
  break;

 case 139:
 case 136:

  error = smbus_error(smbus_pcall(parent, s->slave, s->cmd,
      s->wdata.word, &s->rdata.word));
  if (error)
   break;
  if (s->rbuf && s->rcount >= 2) {
   buf[0] = (u_char)s->rdata.word;
   buf[1] = (u_char)(s->rdata.word >> 8);
   error = copyout(buf, s->rbuf, 2);
   s->rcount = 2;
  }

  break;

 case 140:
  if (s->wcount < 0) {
   error = EINVAL;
   break;
  }
  if (s->wcount > SMB_MAXBLOCKSIZE)
   s->wcount = SMB_MAXBLOCKSIZE;
  if (s->wcount)
   error = copyin(s->wbuf, buf, s->wcount);
  if (error)
   break;
  error = smbus_error(smbus_bwrite(parent, s->slave, s->cmd,
      s->wcount, buf));
  break;

 case 141:
  if (s->rcount < 0) {
   error = EINVAL;
   break;
  }
  if (s->rcount > SMB_MAXBLOCKSIZE)
   s->rcount = SMB_MAXBLOCKSIZE;
  error = smbus_error(smbus_bread(parent, s->slave, s->cmd,
      &bcount, buf));
  if (error)
   break;
  if (s->rcount > bcount)
   s->rcount = bcount;
  error = copyout(buf, s->rbuf, s->rcount);
  break;

 default:
  error = ENOTTY;
 }

 smbus_release_bus(parent, smbdev);

 return (error);
}
