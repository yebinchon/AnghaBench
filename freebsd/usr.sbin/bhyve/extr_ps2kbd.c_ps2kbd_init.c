
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2kbd_softc {struct atkbdc_softc* atkbdc_sc; int mtx; } ;
struct atkbdc_softc {int dummy; } ;


 struct ps2kbd_softc* calloc (int,int) ;
 int console_kbd_register (int ,struct ps2kbd_softc*,int) ;
 int fifo_init (struct ps2kbd_softc*) ;
 int ps2kbd_event ;
 int pthread_mutex_init (int *,int *) ;

struct ps2kbd_softc *
ps2kbd_init(struct atkbdc_softc *atkbdc_sc)
{
 struct ps2kbd_softc *sc;

 sc = calloc(1, sizeof (struct ps2kbd_softc));
 pthread_mutex_init(&sc->mtx, ((void*)0));
 fifo_init(sc);
 sc->atkbdc_sc = atkbdc_sc;

 console_kbd_register(ps2kbd_event, sc, 1);

 return (sc);
}
