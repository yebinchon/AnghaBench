
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pcmchan_matrix {size_t channels; size_t ext; } ;


 size_t AFMT_CHANNEL (size_t) ;
 size_t AFMT_EXTCHANNEL (size_t) ;
 size_t SND_CHN_MATRIX_BEGIN ;
 size_t SND_CHN_MATRIX_END ;
 struct pcmchan_matrix* feeder_matrix_maps ;

struct pcmchan_matrix *
feeder_matrix_format_map(uint32_t format)
{
 uint32_t i, ch, ext;

 ch = AFMT_CHANNEL(format);
 ext = AFMT_EXTCHANNEL(format);

 for (i = SND_CHN_MATRIX_BEGIN; i <= SND_CHN_MATRIX_END; i++) {
  if (feeder_matrix_maps[i].channels == ch &&
      feeder_matrix_maps[i].ext == ext)
   return (&feeder_matrix_maps[i]);
 }

 return (((void*)0));
}
