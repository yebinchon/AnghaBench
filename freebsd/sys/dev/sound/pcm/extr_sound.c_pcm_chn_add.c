
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snddev_info {int devcount; int rvchancount; int reccount; int pvchancount; int playcount; } ;
struct pcm_channel {scalar_t__ direction; } ;
struct TYPE_2__ {int pcm; } ;


 int CHN_DEV (struct pcm_channel*) ;
 int CHN_INSERT_SORT_ASCEND (struct snddev_info*,struct pcm_channel*,int ) ;
 int KASSERT (int,char*) ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int PCM_LOCKASSERT (struct snddev_info*) ;




 TYPE_1__ channels ;

int
pcm_chn_add(struct snddev_info *d, struct pcm_channel *ch)
{
 PCM_BUSYASSERT(d);
 PCM_LOCKASSERT(d);
 KASSERT(ch != ((void*)0) && (ch->direction == PCMDIR_PLAY ||
     ch->direction == PCMDIR_REC), ("Invalid pcm channel"));

 CHN_INSERT_SORT_ASCEND(d, ch, channels.pcm);

 switch (CHN_DEV(ch)) {
 case 131:
  d->playcount++;
  break;
 case 129:
  d->pvchancount++;
  break;
 case 130:
  d->reccount++;
  break;
 case 128:
  d->rvchancount++;
  break;
 default:
  break;
 }

 d->devcount++;

 return (0);
}
