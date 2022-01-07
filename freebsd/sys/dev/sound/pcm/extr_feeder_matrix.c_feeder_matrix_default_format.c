
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pcmchan_matrix {scalar_t__ ext; } ;
struct TYPE_2__ {scalar_t__ channels; scalar_t__ ext; } ;


 scalar_t__ AFMT_CHANNEL (scalar_t__) ;
 scalar_t__ AFMT_EXTCHANNEL (scalar_t__) ;
 scalar_t__ SND_CHN_MATRIX_BEGIN ;
 scalar_t__ SND_CHN_MATRIX_END ;
 scalar_t__ SND_FORMAT (scalar_t__,scalar_t__,scalar_t__) ;
 struct pcmchan_matrix* feeder_matrix_default_channel_map (scalar_t__) ;
 TYPE_1__* feeder_matrix_maps ;

uint32_t
feeder_matrix_default_format(uint32_t format)
{
 struct pcmchan_matrix *m;
 uint32_t i, ch, ext;

 ch = AFMT_CHANNEL(format);
 ext = AFMT_EXTCHANNEL(format);

 if (ext != 0) {
  for (i = SND_CHN_MATRIX_BEGIN; i <= SND_CHN_MATRIX_END; i++) {
   if (feeder_matrix_maps[i].channels == ch &&
       feeder_matrix_maps[i].ext == ext)
   return (SND_FORMAT(format, ch, ext));
  }
 }

 m = feeder_matrix_default_channel_map(ch);
 if (m == ((void*)0))
  return (0x00000000);

 return (SND_FORMAT(format, ch, m->ext));
}
