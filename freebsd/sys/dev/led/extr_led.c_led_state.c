
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ledsc {scalar_t__ count; int private; int (* func ) (int ,int) ;int * ptr; int * str; struct sbuf* spec; } ;


 int blinkers ;
 int callout_reset (int *,int,int ,int *) ;
 int hz ;
 int led_ch ;
 int led_timeout ;
 int * sbuf_data (struct sbuf*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
led_state(struct ledsc *sc, struct sbuf **sb, int state)
{
 struct sbuf *sb2 = ((void*)0);

 sb2 = sc->spec;
 sc->spec = *sb;
 if (*sb != ((void*)0)) {
  sc->str = sbuf_data(*sb);
  if (sc->ptr == ((void*)0)) {
   blinkers++;
   callout_reset(&led_ch, hz / 10, led_timeout, ((void*)0));
  }
  sc->ptr = sc->str;
 } else {
  sc->str = ((void*)0);
  if (sc->ptr != ((void*)0))
   blinkers--;
  sc->ptr = ((void*)0);
  sc->func(sc->private, state);
 }
 sc->count = 0;
 *sb = sb2;
 return(0);
}
