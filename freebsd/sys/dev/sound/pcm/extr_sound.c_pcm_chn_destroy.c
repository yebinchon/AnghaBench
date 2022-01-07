
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int dummy; } ;
struct pcm_channel {int methods; int name; int dev; struct snddev_info* parentsnddev; } ;


 int M_DEVBUF ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int chn_kill (struct pcm_channel*) ;
 int device_printf (int ,char*,int ,int) ;
 int free (struct pcm_channel*,int ) ;
 int kobj_delete (int ,int ) ;

int
pcm_chn_destroy(struct pcm_channel *ch)
{
 struct snddev_info *d;
 int err;

 d = ch->parentsnddev;
 PCM_BUSYASSERT(d);

 err = chn_kill(ch);
 if (err) {
  device_printf(ch->dev, "chn_kill(%s) failed, err = %d\n",
      ch->name, err);
  return (err);
 }

 kobj_delete(ch->methods, M_DEVBUF);
 free(ch, M_DEVBUF);

 return (0);
}
