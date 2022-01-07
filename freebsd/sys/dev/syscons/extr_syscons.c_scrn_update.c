
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


struct TYPE_19__ {int flags; } ;
struct TYPE_21__ {int status; int mouse_pos; int xsize; int start; int end; int cursor_pos; int cursor_oldpos; int ysize; int mouse_cut_end; int mouse_cut_start; TYPE_16__* sc; TYPE_2__* rndr; TYPE_1__ curs_attr; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_20__ {int (* blink_cursor ) (TYPE_3__*,int,int ) ;int (* draw ) (TYPE_3__*,int,int,int ) ;} ;
struct TYPE_18__ {int flags; } ;


 int CONS_BLINK_CURSOR ;
 int CURSOR_ENABLED ;
 int FALSE ;
 int MOUSE_HIDDEN ;
 int MOUSE_MOVED ;
 int MOUSE_VISIBLE ;
 int SC_MOUSE_ENABLED ;
 int SC_VIDEO_LOCK (TYPE_16__*) ;
 int SC_VIDEO_UNLOCK (TYPE_16__*) ;
 int TRUE ;
 scalar_t__ and_region (int*,int*,int,int) ;
 int printf (char*,int) ;
 int sc_draw_cursor_image (TYPE_3__*) ;
 int sc_draw_mouse_image (TYPE_3__*) ;
 int sc_inside_cutmark (TYPE_3__*,int) ;
 int sc_remove_cursor_image (TYPE_3__*) ;
 int sc_remove_mouse_image (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int,int,int ) ;
 int stub2 (TYPE_3__*,int,int,int ) ;
 int stub3 (TYPE_3__*,int,int,int ) ;
 int stub4 (TYPE_3__*,int,int,int ) ;
 int stub5 (TYPE_3__*,int,int,int ) ;
 int stub6 (TYPE_3__*,int,int ) ;

__attribute__((used)) static void
scrn_update(scr_stat *scp, int show_cursor)
{
    int start;
    int end;
    int s;
    int e;



    SC_VIDEO_LOCK(scp->sc);



    if (scp->status & MOUSE_VISIBLE) {
 s = scp->mouse_pos;
 e = scp->mouse_pos + scp->xsize + 1;
 if ((scp->status & (MOUSE_MOVED | MOUSE_HIDDEN))
     || and_region(&s, &e, scp->start, scp->end)
     || ((scp->status & CURSOR_ENABLED) &&
  (scp->cursor_pos != scp->cursor_oldpos) &&
  (and_region(&s, &e, scp->cursor_pos, scp->cursor_pos)
   || and_region(&s, &e, scp->cursor_oldpos, scp->cursor_oldpos)))) {
     sc_remove_mouse_image(scp);
     if (scp->end >= scp->xsize*scp->ysize)
  scp->end = scp->xsize*scp->ysize - 1;
 }
    }




    if (scp->end >= scp->xsize*scp->ysize) {
 printf("scrn_update(): scp->end %d > size_of_screen!!\n", scp->end);
 scp->end = scp->xsize*scp->ysize - 1;
    }
    if (scp->start < 0) {
 printf("scrn_update(): scp->start %d < 0\n", scp->start);
 scp->start = 0;
    }



    if (scp->start <= scp->end) {
 if (scp->mouse_cut_end >= 0) {

     if (scp->mouse_cut_start <= scp->mouse_cut_end) {
  start = scp->mouse_cut_start;
  end = scp->mouse_cut_end;
     } else {
  start = scp->mouse_cut_end;
  end = scp->mouse_cut_start - 1;
     }
     s = start;
     e = end;

     if (and_region(&s, &e, scp->start, scp->end)) {
  (*scp->rndr->draw)(scp, s, e - s + 1, TRUE);
  s = 0;
  e = start - 1;
  if (and_region(&s, &e, scp->start, scp->end))
      (*scp->rndr->draw)(scp, s, e - s + 1, FALSE);
  s = end + 1;
  e = scp->xsize*scp->ysize - 1;
  if (and_region(&s, &e, scp->start, scp->end))
      (*scp->rndr->draw)(scp, s, e - s + 1, FALSE);
     } else {
  (*scp->rndr->draw)(scp, scp->start,
       scp->end - scp->start + 1, FALSE);
     }
 } else {
     (*scp->rndr->draw)(scp, scp->start,
          scp->end - scp->start + 1, FALSE);
 }
    }


    if (!show_cursor) {
        scp->end = 0;
        scp->start = scp->xsize*scp->ysize - 1;
 SC_VIDEO_UNLOCK(scp->sc);
 return;
    }


    if (scp->status & CURSOR_ENABLED) {
 s = scp->start;
 e = scp->end;

        if (scp->cursor_pos != scp->cursor_oldpos) {

            if (!and_region(&s, &e, scp->cursor_oldpos, scp->cursor_oldpos))
                sc_remove_cursor_image(scp);
            sc_draw_cursor_image(scp);
        } else {
            if (and_region(&s, &e, scp->cursor_pos, scp->cursor_pos))

  sc_draw_cursor_image(scp);
     else if (scp->curs_attr.flags & CONS_BLINK_CURSOR)

  (*scp->rndr->blink_cursor)(scp, scp->cursor_pos,
        sc_inside_cutmark(scp,
            scp->cursor_pos));
        }
    }



    if (scp->sc->flags & SC_MOUSE_ENABLED) {
 if (!(scp->status & (MOUSE_VISIBLE | MOUSE_HIDDEN))) {
     scp->status &= ~MOUSE_MOVED;
     sc_draw_mouse_image(scp);
 }
    }


    scp->end = 0;
    scp->start = scp->xsize*scp->ysize - 1;

    SC_VIDEO_UNLOCK(scp->sc);
}
