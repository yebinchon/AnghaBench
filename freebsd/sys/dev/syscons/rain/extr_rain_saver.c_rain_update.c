
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 size_t BLUE (int) ;
 int MAX ;
 int* rain_pal ;
 int vidd_load_palette (int *,int*) ;

__attribute__((used)) static void
rain_update(video_adapter_t *adp)
{
 int i, t;

 t = rain_pal[BLUE(MAX)];
 for (i = MAX; i > 1; i--)
  rain_pal[BLUE(i)] = rain_pal[BLUE(i - 1)];
 rain_pal[BLUE(1)] = t;
 vidd_load_palette(adp, rain_pal);
}
