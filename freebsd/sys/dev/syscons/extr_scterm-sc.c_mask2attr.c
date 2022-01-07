
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bg; int fg; } ;
struct TYPE_6__ {int fg; int bg; } ;
struct TYPE_7__ {int attr_mask; TYPE_1__ cur_color; TYPE_2__ rev_color; } ;
typedef TYPE_3__ term_stat ;


 int BG_CHANGED ;
 int BLINK_ATTR ;
 int BOLD_ATTR ;
 int FG_CHANGED ;
 int REVERSE_ATTR ;
 int UNDERLINE_ATTR ;

__attribute__((used)) static int
mask2attr(term_stat *tcp)
{
 int attr, mask = tcp->attr_mask;

 if (mask & REVERSE_ATTR) {
  attr = ((mask & FG_CHANGED) ?
   tcp->cur_color.bg : tcp->rev_color.fg) |
   (((mask & BG_CHANGED) ?
   tcp->cur_color.fg : tcp->rev_color.bg) << 4);
 } else
  attr = tcp->cur_color.fg | (tcp->cur_color.bg << 4);


 if (mask & (BOLD_ATTR | UNDERLINE_ATTR))
  attr ^= 0x08;
 if (mask & BLINK_ATTR)
  attr ^= 0x80;

 return (attr << 8);
}
