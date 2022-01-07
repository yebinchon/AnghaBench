
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pcmchan_matrix {int channels; TYPE_2__* map; } ;
struct pcm_feeder {struct feed_volume_info* data; TYPE_1__* desc; } ;
struct feed_volume_info {int channels; int * matrix; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ FEEDER_VOLUME ;
 int SND_CHN_MAX ;
 int SND_CHN_MIN ;
 int SND_CHN_T_FL ;

int
feeder_volume_apply_matrix(struct pcm_feeder *f, struct pcmchan_matrix *m)
{
 struct feed_volume_info *info;
 uint32_t i;

 if (f == ((void*)0) || f->desc == ((void*)0) || f->desc->type != FEEDER_VOLUME ||
     f->data == ((void*)0) || m == ((void*)0) || m->channels < SND_CHN_MIN ||
     m->channels > SND_CHN_MAX)
  return (EINVAL);

 info = f->data;

 for (i = 0; i < (sizeof(info->matrix) / sizeof(info->matrix[0])); i++) {
  if (i < m->channels)
   info->matrix[i] = m->map[i].type;
  else
   info->matrix[i] = SND_CHN_T_FL;
 }

 info->channels = m->channels;

 return (0);
}
