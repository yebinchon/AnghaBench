
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct superiocmd {int val; int cr; int ldn; } ;
struct siosc {int dummy; } ;
struct cdev {struct siosc* si_drv1; } ;
typedef scalar_t__ caddr_t ;


 int ENOTTY ;


 int sio_conf_enter (struct siosc*) ;
 int sio_conf_exit (struct siosc*) ;
 int sio_ldn_read (struct siosc*,int ,int ) ;
 int sio_ldn_write (struct siosc*,int ,int ,int ) ;

__attribute__((used)) static int
superio_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags,
    struct thread *td)
{
 struct siosc *sc;
 struct superiocmd *s;

 sc = dev->si_drv1;
 s = (struct superiocmd *)data;
 switch (cmd) {
 case 129:
  sio_conf_enter(sc);
  s->val = sio_ldn_read(sc, s->ldn, s->cr);
  sio_conf_exit(sc);
  return (0);
 case 128:
  sio_conf_enter(sc);
  sio_ldn_write(sc, s->ldn, s->cr, s->val);
  sio_conf_exit(sc);
  return (0);
 default:
  return (ENOTTY);
 }
}
