
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct iwn_stats {int dummy; } ;
struct iwn_softc {int last_stat; } ;
struct iwn_ioctl_data {int dst_addr; } ;
struct cdev {struct iwn_softc* si_drv1; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int IWN_LOCK (struct iwn_softc*) ;
 int IWN_UNLOCK (struct iwn_softc*) ;
 int PRIV_DRIVER ;


 int copyout (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int priv_check (struct thread*,int ) ;

__attribute__((used)) static int
iwn_cdev_ioctl(struct cdev *dev, unsigned long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 int rc;
 struct iwn_softc *sc = dev->si_drv1;
 struct iwn_ioctl_data *d;

 rc = priv_check(td, PRIV_DRIVER);
 if (rc != 0)
  return (0);

 switch (cmd) {
 case 129:
  d = (struct iwn_ioctl_data *) data;
  IWN_LOCK(sc);

  rc = copyout(&sc->last_stat, d->dst_addr, sizeof(struct iwn_stats));
  IWN_UNLOCK(sc);
  break;
 case 128:
  IWN_LOCK(sc);
  memset(&sc->last_stat, 0, sizeof(struct iwn_stats));
  IWN_UNLOCK(sc);
  break;
 default:
  rc = EINVAL;
  break;
 }
 return (rc);
}
