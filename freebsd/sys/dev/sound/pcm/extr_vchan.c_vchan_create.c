
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct snddev_info {scalar_t__ pvchanformat; scalar_t__ pvchanrate; scalar_t__ rvchanformat; scalar_t__ rvchanrate; } ;
struct pcmchan_caps {int maxspeed; scalar_t__ minspeed; int fmtlist; } ;
struct pcm_channel {int flags; scalar_t__ direction; scalar_t__ format; scalar_t__ speed; int devinfo; int methods; int dev; struct snddev_info* parentsnddev; } ;


 int AFMT_PASSTHROUGH ;
 scalar_t__ AFMT_VCHAN ;
 scalar_t__ CHANNEL_SETSPEED (int ,int ,scalar_t__) ;
 int CHN_F_BUSY ;
 int CHN_F_HAS_VCHAN ;
 int CHN_F_VCHAN_DYNAMIC ;
 int CHN_F_VCHAN_PASSTHROUGH ;
 int CHN_INSERT_SORT_DESCEND (struct pcm_channel*,struct pcm_channel*,int ) ;
 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int CHN_REMOVE (struct pcm_channel*,struct pcm_channel*,int ) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ PCMDIR_PLAY ;
 int PCMDIR_PLAY_VIRTUAL ;
 scalar_t__ PCMDIR_REC ;
 int PCMDIR_REC_VIRTUAL ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int PCM_LOCK (struct snddev_info*) ;
 int PCM_UNLOCK (struct snddev_info*) ;
 int RANGE (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ VCHAN_DEFAULT_FORMAT ;
 scalar_t__ VCHAN_DEFAULT_RATE ;
 int VCHAN_FMT_HINT (int) ;
 int VCHAN_SPD_HINT (int) ;
 int children ;
 struct pcmchan_caps* chn_getcaps (struct pcm_channel*) ;
 int chn_reset (struct pcm_channel*,scalar_t__,scalar_t__) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 scalar_t__ feeder_rate_max ;
 scalar_t__ feeder_rate_min ;
 scalar_t__ feeder_rate_round ;
 int pcm_chn_add (struct snddev_info*,struct pcm_channel*) ;
 struct pcm_channel* pcm_chn_create (struct snddev_info*,struct pcm_channel*,int *,int,int,struct pcm_channel*) ;
 int pcm_chn_destroy (struct pcm_channel*) ;
 scalar_t__ pcm_chn_remove (struct snddev_info*,struct pcm_channel*) ;
 int resource_int_value (int ,int ,int ,scalar_t__*) ;
 int resource_string_value (int ,int ,int ,char const**) ;
 scalar_t__ snd_fmtvalid (int ,int ) ;
 scalar_t__ snd_str2afmt (char const*) ;
 int vchan_class ;

int
vchan_create(struct pcm_channel *parent, int num)
{
 struct snddev_info *d;
 struct pcm_channel *ch;
 struct pcmchan_caps *parent_caps;
 uint32_t vchanfmt, vchanspd;
 int ret, direction, r, save;

 d = parent->parentsnddev;

 PCM_BUSYASSERT(d);
 CHN_LOCKASSERT(parent);

 if (!(parent->flags & CHN_F_BUSY))
  return (EBUSY);

 if (!(parent->direction == PCMDIR_PLAY ||
     parent->direction == PCMDIR_REC))
  return (EINVAL);

 d = parent->parentsnddev;

 CHN_UNLOCK(parent);
 PCM_LOCK(d);

 if (parent->direction == PCMDIR_PLAY) {
  direction = PCMDIR_PLAY_VIRTUAL;
  vchanfmt = d->pvchanformat;
  vchanspd = d->pvchanrate;
 } else {
  direction = PCMDIR_REC_VIRTUAL;
  vchanfmt = d->rvchanformat;
  vchanspd = d->rvchanrate;
 }


 ch = pcm_chn_create(d, parent, &vchan_class, direction, num, parent);
 if (ch == ((void*)0)) {
  PCM_UNLOCK(d);
  CHN_LOCK(parent);
  return (ENODEV);
 }


 ret = pcm_chn_add(d, ch);
 PCM_UNLOCK(d);
 if (ret != 0) {
  pcm_chn_destroy(ch);
  CHN_LOCK(parent);
  return (ret);
 }

 CHN_LOCK(parent);





 CHN_INSERT_SORT_DESCEND(parent, ch, children);

 if (parent->flags & CHN_F_HAS_VCHAN)
  return (0);

 parent->flags |= CHN_F_HAS_VCHAN;

 parent_caps = chn_getcaps(parent);
 if (parent_caps == ((void*)0))
  ret = EINVAL;

 save = 0;

 if (ret == 0 && vchanfmt == 0) {
  const char *vfmt;

  CHN_UNLOCK(parent);
  r = resource_string_value(device_get_name(parent->dev),
      device_get_unit(parent->dev), VCHAN_FMT_HINT(direction),
      &vfmt);
  CHN_LOCK(parent);
  if (r != 0)
   vfmt = ((void*)0);
  if (vfmt != ((void*)0)) {
   vchanfmt = snd_str2afmt(vfmt);
   if (vchanfmt != 0 && !(vchanfmt & AFMT_VCHAN))
    vchanfmt = 0;
  }
  if (vchanfmt == 0)
   vchanfmt = VCHAN_DEFAULT_FORMAT;
  save = 1;
 }

 if (ret == 0 && vchanspd == 0) {






  CHN_UNLOCK(parent);
  r = resource_int_value(device_get_name(parent->dev),
      device_get_unit(parent->dev), VCHAN_SPD_HINT(direction),
      &vchanspd);
  CHN_LOCK(parent);
  if (r != 0) {






   switch (parent_caps->maxspeed) {
   case 45000:
   case 49000:
    vchanspd = 44100;
    break;
   default:
    vchanspd = VCHAN_DEFAULT_RATE;
    if (vchanspd > parent_caps->maxspeed)
     vchanspd = parent_caps->maxspeed;
    break;
   }
   if (vchanspd < parent_caps->minspeed)
    vchanspd = parent_caps->minspeed;
  }
  save = 1;
 }

 if (ret == 0) {



  if (vchanspd < feeder_rate_min)
   vchanspd = feeder_rate_min;
  if (vchanspd > feeder_rate_max)
   vchanspd = feeder_rate_max;

  if (feeder_rate_round) {
   RANGE(vchanspd, parent_caps->minspeed,
       parent_caps->maxspeed);
   vchanspd = CHANNEL_SETSPEED(parent->methods,
       parent->devinfo, vchanspd);
  }

  ret = chn_reset(parent, vchanfmt, vchanspd);
 }

 if (ret == 0 && save) {



  if (direction == PCMDIR_PLAY_VIRTUAL) {
   d->pvchanformat = parent->format;
   d->pvchanrate = parent->speed;
  } else {
   d->rvchanformat = parent->format;
   d->rvchanrate = parent->speed;
  }
 }





 if (ret == 0 && snd_fmtvalid(AFMT_PASSTHROUGH, parent_caps->fmtlist)) {
  parent->flags &= ~CHN_F_VCHAN_DYNAMIC;
  parent->flags |= CHN_F_VCHAN_PASSTHROUGH;
 }

 if (ret != 0) {
  CHN_REMOVE(parent, ch, children);
  parent->flags &= ~CHN_F_HAS_VCHAN;
  CHN_UNLOCK(parent);
  PCM_LOCK(d);
  if (pcm_chn_remove(d, ch) == 0) {
   PCM_UNLOCK(d);
   pcm_chn_destroy(ch);
  } else
   PCM_UNLOCK(d);
  CHN_LOCK(parent);
 }

 return (ret);
}
