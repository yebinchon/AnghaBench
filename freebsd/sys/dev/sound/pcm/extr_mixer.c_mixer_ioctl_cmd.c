
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct snd_mixer {int lock; int enuminfo; int busy; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef int oss_sysinfo ;
typedef int oss_mixerinfo ;
typedef int oss_mixer_enuminfo ;
typedef int oss_card_info ;
typedef int oss_audioinfo ;
typedef int mixer_info ;
typedef scalar_t__ caddr_t ;


 int EBADF ;
 int EINVAL ;
 int ENXIO ;
 char IOCGROUP (int) ;
 int MIXER_CMD_CDEV ;
 int MIXER_READ (int ) ;
 int MIXER_WRITE (int ) ;
 int SOUND_VERSION ;
 int bcopy (void*,scalar_t__,int) ;
 int dsp_oss_audioinfo (struct cdev*,int *) ;
 int mix_getdevs (struct snd_mixer*) ;
 int mix_getrecdevs (struct snd_mixer*) ;
 int mixer_get (struct snd_mixer*,int) ;
 int mixer_get_recroute (struct snd_mixer*,int*) ;
 int mixer_getrecsrc (struct snd_mixer*) ;
 int mixer_mixerinfo (struct snd_mixer*,int *) ;
 int mixer_oss_mixerinfo (struct cdev*,int *) ;
 int mixer_set (struct snd_mixer*,int,int) ;
 int mixer_set_recroute (struct snd_mixer*,int) ;
 int mixer_setrecsrc (struct snd_mixer*,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sound_oss_card_info (int *) ;
 int sound_oss_sysinfo (int *) ;

int
mixer_ioctl_cmd(struct cdev *i_dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td, int from)
{
 struct snd_mixer *m;
 int ret = EINVAL, *arg_i = (int *)arg;
 int v = -1, j = cmd & 0xff;





 if (IOCGROUP(cmd) == 'X') {
  switch (cmd) {
  case 134:
   sound_oss_sysinfo((oss_sysinfo *)arg);
   return (0);
  case 140:
   return (sound_oss_card_info((oss_card_info *)arg));
      case 142:
      case 141:
      case 136:
   return (dsp_oss_audioinfo(i_dev, (oss_audioinfo *)arg));
  case 135:
   return (mixer_oss_mixerinfo(i_dev, (oss_mixerinfo *)arg));
  }
  return (EINVAL);
 }

 m = i_dev->si_drv1;

 if (m == ((void*)0))
  return (EBADF);

 snd_mtxlock(m->lock);
 if (from == MIXER_CMD_CDEV && !m->busy) {
  snd_mtxunlock(m->lock);
  return (EBADF);
 }
 switch (cmd) {
 case 138:
  bcopy((void *)&m->enuminfo, arg, sizeof(oss_mixer_enuminfo));
  ret = 0;
  goto done;
 case 139:
  ret = mixer_get_recroute(m, arg_i);
  goto done;
 case 137:
  ret = mixer_set_recroute(m, *arg_i);
  goto done;
 case 143:
  *arg_i = SOUND_VERSION;
  ret = 0;
  goto done;
 case 131:
  mixer_mixerinfo(m, (mixer_info *)arg);
  ret = 0;
  goto done;
 }
 if ((cmd & ~0xff) == MIXER_WRITE(0)) {
  if (j == 129)
   ret = mixer_setrecsrc(m, *arg_i);
  else
   ret = mixer_set(m, j, *arg_i);
  snd_mtxunlock(m->lock);
  return ((ret == 0) ? 0 : ENXIO);
 }
 if ((cmd & ~0xff) == MIXER_READ(0)) {
  switch (j) {
  case 132:
  case 133:
  case 128:
   v = mix_getdevs(m);
   break;
  case 130:
   v = mix_getrecdevs(m);
   break;
  case 129:
   v = mixer_getrecsrc(m);
   break;
  default:
   v = mixer_get(m, j);
  }
  *arg_i = v;
  snd_mtxunlock(m->lock);
  return ((v != -1) ? 0 : ENXIO);
 }
done:
 snd_mtxunlock(m->lock);
 return (ret);
}
