
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {size_t channels; int id; } ;


 size_t SND_CHN_MATRIX_BEGIN ;
 size_t SND_CHN_MATRIX_END ;
 int SND_CHN_MATRIX_UNKNOWN ;
 size_t* feeder_matrix_default_ids ;
 TYPE_1__* feeder_matrix_maps ;

int
feeder_matrix_default_id(uint32_t ch)
{

 if (ch < feeder_matrix_maps[SND_CHN_MATRIX_BEGIN].channels ||
     ch > feeder_matrix_maps[SND_CHN_MATRIX_END].channels)
  return (SND_CHN_MATRIX_UNKNOWN);

 return (feeder_matrix_maps[feeder_matrix_default_ids[ch]].id);
}
