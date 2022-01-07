
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machfb_softc {int dummy; } ;


 int GUI_STAT ;
 int regr (struct machfb_softc*,int ) ;
 int wait_for_fifo (struct machfb_softc*,int) ;

__attribute__((used)) static inline void
wait_for_idle(struct machfb_softc *sc)
{

 wait_for_fifo(sc, 16);
 while ((regr(sc, GUI_STAT) & 1) != 0)
  ;
}
