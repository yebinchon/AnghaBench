
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_ch {int* buf; size_t pos; size_t size; int * ptr; int gen; } ;
struct dcons_softc {struct dcons_ch o; } ;


 int DCONS_MAKE_PTR (struct dcons_ch*) ;
 int DCONS_NEXT_GEN (int ) ;

void
dcons_putc(struct dcons_softc *dc, int c)
{
 struct dcons_ch *ch;

 ch = &dc->o;

 ch->buf[ch->pos] = c;
 ch->pos ++;
 if (ch->pos >= ch->size) {
  ch->gen = DCONS_NEXT_GEN(ch->gen);
  ch->pos = 0;
 }
 *ch->ptr = DCONS_MAKE_PTR(ch);
}
