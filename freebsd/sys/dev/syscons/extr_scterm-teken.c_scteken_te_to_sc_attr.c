
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int teken_color_t ;
struct TYPE_3__ {int ta_format; int ta_bgcolor; int ta_fgcolor; } ;
typedef TYPE_1__ teken_attr_t ;


 int TF_BLINK ;
 int TF_BOLD ;
 int TF_REVERSE ;
 int TF_UNDERLINE ;
 int* te_to_sc_color ;
 int teken_256to16 (int) ;

__attribute__((used)) static int
scteken_te_to_sc_attr(const teken_attr_t *a)
{
 int attr;
 teken_color_t fg, bg;

 if (a->ta_format & TF_REVERSE) {
  fg = a->ta_bgcolor;
  bg = a->ta_fgcolor;
 } else {
  fg = a->ta_fgcolor;
  bg = a->ta_bgcolor;
 }
 if (fg >= 16)
  fg = teken_256to16(fg);
 if (bg >= 16)
  bg = teken_256to16(bg);
 attr = te_to_sc_color[fg & 7] | (fg & 8) |
     ((te_to_sc_color[bg & 7] | (bg & 8)) << 4);


 if (a->ta_format & (TF_BOLD | TF_UNDERLINE))
  attr ^= 8;
 if (a->ta_format & TF_BLINK)
  attr ^= 0x80;

 return (attr);
}
