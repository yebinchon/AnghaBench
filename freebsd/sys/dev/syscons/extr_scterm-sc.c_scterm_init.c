
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int fg; int bg; } ;
struct TYPE_8__ {int fg; int bg; } ;
struct TYPE_10__ {int flags; int saved_xpos; int saved_ypos; void* cur_attr; TYPE_2__ std_color; TYPE_2__ cur_color; TYPE_1__ dflt_rev_color; TYPE_1__ rev_color; TYPE_2__ dflt_std_color; int esc; int attr_mask; } ;
typedef TYPE_3__ term_stat ;
typedef int scr_stat ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {int te_refcount; } ;


 int EINVAL ;
 int NORMAL_ATTR ;
 int SCTERM_BUSY ;
 int SC_NORM_ATTR ;
 int SC_NORM_REV_ATTR ;


 int bzero (TYPE_3__*,int) ;
 void* mask2attr (TYPE_3__*) ;
 TYPE_5__ reserved_term_stat ;
 TYPE_4__ sc_term_sc ;

__attribute__((used)) static int
scterm_init(scr_stat *scp, void **softc, int code)
{
 term_stat *tcp;

 if (*softc == ((void*)0)) {
  if (reserved_term_stat.flags & SCTERM_BUSY)
   return EINVAL;
  *softc = &reserved_term_stat;
 }
 tcp = *softc;

 switch (code) {
 case 129:
  bzero(tcp, sizeof(*tcp));
  tcp->flags = SCTERM_BUSY;
  tcp->esc = 0;
  tcp->saved_xpos = -1;
  tcp->saved_ypos = -1;
  tcp->attr_mask = NORMAL_ATTR;

  tcp->dflt_std_color.fg = SC_NORM_ATTR & 0x0f;
  tcp->dflt_std_color.bg = (SC_NORM_ATTR >> 4) & 0x0f;
  tcp->dflt_rev_color.fg = SC_NORM_REV_ATTR & 0x0f;
  tcp->dflt_rev_color.bg = (SC_NORM_REV_ATTR >> 4) & 0x0f;
  tcp->std_color = tcp->dflt_std_color;
  tcp->rev_color = tcp->dflt_rev_color;
  tcp->cur_color = tcp->std_color;
  tcp->cur_attr = mask2attr(tcp);
  ++sc_term_sc.te_refcount;
  break;

 case 128:
  tcp->esc = 0;
  tcp->saved_xpos = -1;
  tcp->saved_ypos = -1;




  tcp->cur_color = tcp->std_color;
  tcp->cur_attr = mask2attr(tcp);
  break;
 }

 return 0;
}
