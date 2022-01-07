
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int va_flags; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 scalar_t__ ISPALAVAIL (int ) ;
 int V_DISPLAY_BLANK ;
 int V_DISPLAY_ON ;
 int* palette ;
 int vidd_blank_display (TYPE_1__*,int ) ;
 int vidd_load_palette (TYPE_1__*,int*) ;
 int vidd_save_palette (TYPE_1__*,int*) ;

__attribute__((used)) static int
fade_saver(video_adapter_t *adp, int blank)
{
 static int count = 0;
 u_char pal[256*3];
 int i;

 if (blank) {
  if (ISPALAVAIL(adp->va_flags)) {
   if (count <= 0)
    vidd_save_palette(adp, palette);
   if (count < 256) {
    pal[0] = pal[1] = pal[2] = 0;
    for (i = 3; i < 256*3; i++) {
     if (palette[i] - count > 60)
      pal[i] = palette[i] - count;
     else
      pal[i] = 60;
    }
    vidd_load_palette(adp, pal);
    count++;
   }
  } else {
       vidd_blank_display(adp, V_DISPLAY_BLANK);
  }
 } else {
  if (ISPALAVAIL(adp->va_flags)) {
   vidd_load_palette(adp, palette);
   count = 0;
  } else {
       vidd_blank_display(adp, V_DISPLAY_ON);
  }
 }
 return 0;
}
