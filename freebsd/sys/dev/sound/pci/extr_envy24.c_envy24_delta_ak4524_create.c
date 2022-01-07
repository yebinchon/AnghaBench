
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int ** dac; int ** adc; int dev; } ;
struct envy24_delta_ak4524_codec {int dir; int num; struct sc_info* parent; int * info; } ;
typedef int device_t ;


 int M_ENVY24 ;
 int M_NOWAIT ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int device_printf (int ,char*,int,int) ;
 int envy24_delta_ak4524_ctl ;
 int free (struct envy24_delta_ak4524_codec*,int ) ;
 struct envy24_delta_ak4524_codec* malloc (int,int ,int ) ;
 int * spicds_create (int ,struct envy24_delta_ak4524_codec*,int,int ) ;

__attribute__((used)) static void *
envy24_delta_ak4524_create(device_t dev, void *info, int dir, int num)
{
 struct sc_info *sc = info;
 struct envy24_delta_ak4524_codec *buff = ((void*)0);





 buff = malloc(sizeof(*buff), M_ENVY24, M_NOWAIT);
 if (buff == ((void*)0))
  return ((void*)0);

 if (dir == PCMDIR_REC && sc->adc[num] != ((void*)0))
  buff->info = ((struct envy24_delta_ak4524_codec *)sc->adc[num])->info;
 else if (dir == PCMDIR_PLAY && sc->dac[num] != ((void*)0))
  buff->info = ((struct envy24_delta_ak4524_codec *)sc->dac[num])->info;
 else
  buff->info = spicds_create(dev, buff, num, envy24_delta_ak4524_ctl);
 if (buff->info == ((void*)0)) {
  free(buff, M_ENVY24);
  return ((void*)0);
 }

 buff->parent = sc;
 buff->dir = dir;
 buff->num = num;

 return (void *)buff;
}
