
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct tty {int dummy; } ;
struct thread {int td_proc; } ;
struct snp_softc {int snp_outq; struct tty* snp_tty; } ;
struct cdev {int dummy; } ;
typedef void* dev_t ;
typedef scalar_t__ caddr_t ;


 int EBUSY ;
 int ENOTTY ;

 void* NODEV ;



 int SNP_LOCK () ;
 int SNP_OUTPUT_BUFSIZE ;
 int SNP_UNLOCK () ;
 int devfs_get_cdevpriv (void**) ;
 int snp_hook ;
 int tty_lock (struct tty*) ;
 void* tty_udev (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyhook_register (struct tty**,int ,int,int *,struct snp_softc*) ;
 int ttyoutq_bytesused (int *) ;
 int ttyoutq_setsize (int *,struct tty*,int ) ;

__attribute__((used)) static int
snp_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags,
    struct thread *td)
{
 struct snp_softc *ss;
 struct tty *tp;
 int error;

 error = devfs_get_cdevpriv((void **)&ss);
 if (error != 0)
  return (error);

 switch (cmd) {
 case 128:

  SNP_LOCK();
  if (ss->snp_tty != ((void*)0)) {
   SNP_UNLOCK();
   return (EBUSY);
  }



  error = ttyhook_register(&ss->snp_tty, td->td_proc,
      *(int *)data, &snp_hook, ss);
  SNP_UNLOCK();
  if (error != 0)
   return (error);


  tp = ss->snp_tty;
  tty_lock(tp);
  ttyoutq_setsize(&ss->snp_outq, tp, SNP_OUTPUT_BUFSIZE);
  tty_unlock(tp);

  return (0);
 case 130:

  if (ss->snp_tty == ((void*)0))
   *(dev_t *)data = NODEV;
  else
   *(dev_t *)data = tty_udev(ss->snp_tty);
  return (0);
 case 129:
  if (ss->snp_tty == ((void*)0))
   *(uint32_t *)data = -1;
  else
   *(uint32_t *)data = tty_udev(ss->snp_tty);
  return (0);
 case 131:
  tp = ss->snp_tty;
  if (tp != ((void*)0)) {
   tty_lock(tp);
   *(int *)data = ttyoutq_bytesused(&ss->snp_outq);
   tty_unlock(tp);
  } else {
   *(int *)data = 0;
  }
  return (0);
 default:
  return (ENOTTY);
 }
}
