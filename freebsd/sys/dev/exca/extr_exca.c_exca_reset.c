
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exca_softc {int memalloc; int ioalloc; int dev; } ;
typedef int device_t ;


 int DELAY (int) ;
 int DEVPRINTF (int ,char*) ;
 int EXCA_ADDRWIN_ENABLE ;
 int EXCA_INTR ;
 int EXCA_INTR_CARDTYPE_IO ;
 int EXCA_INTR_ENABLE ;
 int EXCA_INTR_RESET ;
 int EXCA_IO_WINS ;
 int EXCA_MEM_WINS ;
 int EXCA_PWRCTL ;
 int EXCA_PWRCTL_OE ;
 int exca_do_io_map (struct exca_softc*,int) ;
 int exca_do_mem_map (struct exca_softc*,int) ;
 int exca_putb (struct exca_softc*,int ,int ) ;
 int exca_setb (struct exca_softc*,int ,int ) ;
 int exca_wait_ready (struct exca_softc*) ;

void
exca_reset(struct exca_softc *sc, device_t child)
{
 int win;


 exca_setb(sc, EXCA_PWRCTL, EXCA_PWRCTL_OE);

 exca_putb(sc, EXCA_INTR, EXCA_INTR_ENABLE);

 DELAY(30*1000);

 exca_setb(sc, EXCA_INTR, EXCA_INTR_RESET);

 DELAY(20*1000);

 exca_wait_ready(sc);


 exca_putb(sc, EXCA_ADDRWIN_ENABLE, 0);

 exca_setb(sc, EXCA_INTR, EXCA_INTR_CARDTYPE_IO);
 DEVPRINTF(sc->dev, "card type is io\n");


 for (win = 0; win < EXCA_MEM_WINS; ++win)
  if (sc->memalloc & (1 << win))
   exca_do_mem_map(sc, win);
 for (win = 0; win < EXCA_IO_WINS; ++win)
  if (sc->ioalloc & (1 << win))
   exca_do_io_map(sc, win);
}
