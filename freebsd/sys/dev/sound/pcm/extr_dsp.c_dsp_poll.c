
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct snddev_info {int dummy; } ;
struct pcm_channel {int flags; } ;
struct cdev {int dummy; } ;


 int CHN_F_DEAD ;
 int DSP_REGISTERED (struct snddev_info*,struct cdev*) ;
 int EBADF ;
 int PCM_GIANT_ENTER (struct snddev_info*) ;
 int PCM_GIANT_LEAVE (struct snddev_info*) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int SD_F_PRIO_RD ;
 int SD_F_PRIO_WR ;
 int chn_poll (struct pcm_channel*,int,struct thread*) ;
 struct snddev_info* dsp_get_info (struct cdev*) ;
 int getchns (struct cdev*,struct pcm_channel**,struct pcm_channel**,int) ;
 int relchns (struct cdev*,struct pcm_channel*,struct pcm_channel*,int) ;

__attribute__((used)) static int
dsp_poll(struct cdev *i_dev, int events, struct thread *td)
{
 struct snddev_info *d;
 struct pcm_channel *wrch, *rdch;
 int ret, e;

 d = dsp_get_info(i_dev);
 if (!DSP_REGISTERED(d, i_dev))
  return (EBADF);

 PCM_GIANT_ENTER(d);

 wrch = ((void*)0);
 rdch = ((void*)0);
 ret = 0;

 getchns(i_dev, &rdch, &wrch, SD_F_PRIO_RD | SD_F_PRIO_WR);

 if (wrch != ((void*)0) && !(wrch->flags & CHN_F_DEAD)) {
  e = (events & (POLLOUT | POLLWRNORM));
  if (e)
   ret |= chn_poll(wrch, e, td);
 }

 if (rdch != ((void*)0) && !(rdch->flags & CHN_F_DEAD)) {
  e = (events & (POLLIN | POLLRDNORM));
  if (e)
   ret |= chn_poll(rdch, e, td);
 }

 relchns(i_dev, rdch, wrch, SD_F_PRIO_RD | SD_F_PRIO_WR);

 PCM_GIANT_LEAVE(d);

 return (ret);
}
