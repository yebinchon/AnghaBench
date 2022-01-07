
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tunable ;
typedef int rgb ;
struct TYPE_2__ {unsigned char r; unsigned char g; unsigned char b; } ;


 int NCOLORS ;
 scalar_t__ TUNABLE_STR_FETCH (char*,char*,int) ;
 TYPE_1__* color_def ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ vt_parse_rgb_triplet (char*,unsigned char*,unsigned char*,unsigned char*) ;

__attribute__((used)) static void
vt_palette_init(void)
{
 int i;
 char rgb[32];
 char tunable[32];
 unsigned char r, g, b;

 for (i = 0; i < NCOLORS; i++) {
  snprintf(tunable, sizeof(tunable),
      "kern.vt.color.%d.rgb", i);
  if (TUNABLE_STR_FETCH(tunable, rgb, sizeof(rgb))) {
   if (vt_parse_rgb_triplet(rgb, &r, &g, &b) == 0) {

    color_def[i].r = r*100/255;
    color_def[i].g = g*100/255;
    color_def[i].b = b*100/255;
   }
  }
 }
}
