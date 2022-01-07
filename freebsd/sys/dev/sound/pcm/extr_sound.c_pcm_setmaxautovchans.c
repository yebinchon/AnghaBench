
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int pvchancount; int rvchancount; } ;


 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int pcm_clonereset (struct snddev_info*) ;
 int pcm_setvchans (struct snddev_info*,int ,int,int) ;

__attribute__((used)) static void
pcm_setmaxautovchans(struct snddev_info *d, int num)
{
 PCM_BUSYASSERT(d);

 if (num < 0)
  return;

 if (num >= 0 && d->pvchancount > num)
  (void)pcm_setvchans(d, PCMDIR_PLAY, num, -1);
 else if (num > 0 && d->pvchancount == 0)
  (void)pcm_setvchans(d, PCMDIR_PLAY, 1, -1);

 if (num >= 0 && d->rvchancount > num)
  (void)pcm_setvchans(d, PCMDIR_REC, num, -1);
 else if (num > 0 && d->rvchancount == 0)
  (void)pcm_setvchans(d, PCMDIR_REC, 1, -1);

 pcm_clonereset(d);
}
