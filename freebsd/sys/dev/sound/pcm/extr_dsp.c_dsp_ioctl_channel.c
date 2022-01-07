
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct snddev_info {int dummy; } ;
struct pcm_channel {int feederflags; scalar_t__ direction; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int CHN_GETVOLUME (struct pcm_channel*,int ,int ) ;
 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int EINVAL ;
 int FEEDER_VOLUME ;
 int MIXER_READ (int ) ;
 int MIXER_WRITE (int ) ;
 int PCMDEV (struct cdev*) ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;
 struct pcm_channel* PCM_RDCH (struct cdev*) ;
 int PCM_REGISTERED (struct snddev_info*) ;
 int PCM_UNLOCKASSERT (struct snddev_info*) ;
 struct pcm_channel* PCM_VOLCH (struct cdev*) ;
 struct pcm_channel* PCM_WRCH (struct cdev*) ;
 int SD_F_VPC ;
 int SND_CHN_T_FL ;
 int SND_CHN_T_FR ;
 int SND_DEV_DSPHW_PLAY ;
 int SND_DEV_DSPHW_REC ;
 int SND_DEV_DSPHW_VPLAY ;
 int SND_DEV_DSPHW_VREC ;
 int SND_VOL_C_PCM ;
 int SOUND_MASK_PCM ;
 int SOUND_MASK_RECLEV ;


 int SOUND_MIXER_PCM ;
 int SOUND_MIXER_RECLEV ;



 int chn_setvolume_multi (struct pcm_channel*,int ,int,int,int) ;
 int dsp_get_flags (struct cdev*) ;
 struct snddev_info* dsp_get_info (struct cdev*) ;
 int dsp_get_volume_channel (struct cdev*,struct pcm_channel**) ;

__attribute__((used)) static int
dsp_ioctl_channel(struct cdev *dev, struct pcm_channel *volch, u_long cmd,
    caddr_t arg)
{
 struct snddev_info *d;
 struct pcm_channel *rdch, *wrch;
 int j, devtype, ret;

 d = dsp_get_info(dev);
 if (!PCM_REGISTERED(d) || !(dsp_get_flags(dev) & SD_F_VPC))
  return (-1);

 PCM_UNLOCKASSERT(d);

 j = cmd & 0xff;

 rdch = PCM_RDCH(dev);
 wrch = PCM_WRCH(dev);


 if (volch == ((void*)0))
  volch = PCM_VOLCH(dev);


 if (volch == ((void*)0)) {
  if (j == SOUND_MIXER_RECLEV && rdch != ((void*)0))
   volch = rdch;
  else if (j == SOUND_MIXER_PCM && wrch != ((void*)0))
   volch = wrch;
 }

 devtype = PCMDEV(dev);


 if (volch == ((void*)0) &&
     (devtype == SND_DEV_DSPHW_PLAY || devtype == SND_DEV_DSPHW_VPLAY ||
     devtype == SND_DEV_DSPHW_REC || devtype == SND_DEV_DSPHW_VREC)) {
  ret = dsp_get_volume_channel(dev, &volch);
  if (ret != 0)
   return (ret);
  if (volch == ((void*)0))
   return (EINVAL);
 }


 if (volch != ((void*)0)) {
  CHN_LOCK(volch);
  if (!(volch->feederflags & (1 << FEEDER_VOLUME))) {
   CHN_UNLOCK(volch);
   return (-1);
  }
  if (volch->direction == PCMDIR_PLAY)
   wrch = volch;
  else
   rdch = volch;
 }

 ret = EINVAL;

 if (volch != ((void*)0) &&
     ((j == SOUND_MIXER_PCM && volch->direction == PCMDIR_PLAY) ||
     (j == SOUND_MIXER_RECLEV && volch->direction == PCMDIR_REC))) {
  if ((cmd & ~0xff) == MIXER_WRITE(0)) {
   int left, right, center;

   left = *(int *)arg & 0x7f;
   right = ((*(int *)arg) >> 8) & 0x7f;
   center = (left + right) >> 1;
   chn_setvolume_multi(volch, SND_VOL_C_PCM, left, right,
       center);
  } else if ((cmd & ~0xff) == MIXER_READ(0)) {
   *(int *)arg = CHN_GETVOLUME(volch,
    SND_VOL_C_PCM, SND_CHN_T_FL);
   *(int *)arg |= CHN_GETVOLUME(volch,
    SND_VOL_C_PCM, SND_CHN_T_FR) << 8;
  }
  ret = 0;
 } else if (rdch != ((void*)0) || wrch != ((void*)0)) {
  switch (j) {
  case 131:
  case 132:
  case 128:
   if ((cmd & ~0xff) == MIXER_READ(0)) {
    *(int *)arg = 0;
    if (rdch != ((void*)0))
     *(int *)arg |= SOUND_MASK_RECLEV;
    if (wrch != ((void*)0))
     *(int *)arg |= SOUND_MASK_PCM;
   }
   ret = 0;
   break;
  case 130:
  case 129:
   if ((cmd & ~0xff) == MIXER_READ(0))
    *(int *)arg = 0;
   ret = 0;
   break;
  default:
   break;
  }
 }

 if (volch != ((void*)0))
  CHN_UNLOCK(volch);

 return (ret);
}
