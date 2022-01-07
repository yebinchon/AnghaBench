
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sc_info {int dev; } ;


 int device_printf (int ,char*) ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
envy24htmixer_uninit(struct snd_mixer *m)
{
 struct sc_info *sc = mix_getdevinfo(m);

 if (sc == ((void*)0))
  return -1;




 return 0;
}
