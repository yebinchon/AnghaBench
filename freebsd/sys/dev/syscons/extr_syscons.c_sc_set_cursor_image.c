
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; void* height; void* base; } ;
struct TYPE_8__ {int sc; TYPE_2__ curs_attr; TYPE_1__* rndr; void* font_size; TYPE_2__ base_curs_attr; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_6__ {int (* set_cursor ) (TYPE_3__*,void*,void*,int) ;} ;


 int CONS_BLINK_CURSOR ;
 int CONS_CHAR_CURSOR ;
 int CONS_HIDDEN_CURSOR ;
 int SC_VIDEO_LOCK (int ) ;
 int SC_VIDEO_UNLOCK (int ) ;
 void* imin (void*,void*) ;
 int stub1 (TYPE_3__*,void*,void*,int) ;

void
sc_set_cursor_image(scr_stat *scp)
{
    scp->curs_attr = scp->base_curs_attr;
    if (scp->curs_attr.flags & CONS_HIDDEN_CURSOR) {

 scp->curs_attr.flags = CONS_CHAR_CURSOR;
 scp->curs_attr.base = scp->curs_attr.height = 0;
    } else if (scp->curs_attr.flags & CONS_CHAR_CURSOR) {
 scp->curs_attr.base = imin(scp->base_curs_attr.base,
      scp->font_size - 1);
 scp->curs_attr.height = imin(scp->base_curs_attr.height,
        scp->font_size - scp->curs_attr.base);
    } else {
 scp->curs_attr.base = 0;
 scp->curs_attr.height = scp->font_size;
    }


    SC_VIDEO_LOCK(scp->sc);
    (*scp->rndr->set_cursor)(scp, scp->curs_attr.base, scp->curs_attr.height,
        scp->curs_attr.flags & CONS_BLINK_CURSOR);
    SC_VIDEO_UNLOCK(scp->sc);
}
