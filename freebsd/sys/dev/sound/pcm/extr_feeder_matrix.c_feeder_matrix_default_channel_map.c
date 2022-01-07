
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pcmchan_matrix {size_t channels; } ;


 size_t SND_CHN_MATRIX_BEGIN ;
 size_t SND_CHN_MATRIX_END ;
 size_t* feeder_matrix_default_ids ;
 struct pcmchan_matrix* feeder_matrix_maps ;

struct pcmchan_matrix *
feeder_matrix_default_channel_map(uint32_t ch)
{

 if (ch < feeder_matrix_maps[SND_CHN_MATRIX_BEGIN].channels ||
     ch > feeder_matrix_maps[SND_CHN_MATRIX_END].channels)
  return (((void*)0));

 return (&feeder_matrix_maps[feeder_matrix_default_ids[ch]]);
}
