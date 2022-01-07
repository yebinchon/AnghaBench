
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct envy24_delta_ak4524_codec {scalar_t__ dir; size_t num; int info; TYPE_1__* parent; } ;
struct TYPE_2__ {int ** adc; int ** dac; int dev; } ;


 int M_ENVY24 ;
 scalar_t__ PCMDIR_PLAY ;
 int device_printf (int ,char*) ;
 int free (void*,int ) ;
 int spicds_destroy (int ) ;

__attribute__((used)) static void
envy24_delta_ak4524_destroy(void *codec)
{
 struct envy24_delta_ak4524_codec *ptr = codec;
 if (ptr == ((void*)0))
  return;




 if (ptr->dir == PCMDIR_PLAY) {
  if (ptr->parent->dac[ptr->num] != ((void*)0))
   spicds_destroy(ptr->info);
 }
 else {
  if (ptr->parent->adc[ptr->num] != ((void*)0))
   spicds_destroy(ptr->info);
 }

 free(codec, M_ENVY24);
}
