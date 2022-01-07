
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct machfb_softc {int dummy; } ;


 int FIFO_STAT ;
 int regr (struct machfb_softc*,int ) ;

__attribute__((used)) static inline void
wait_for_fifo(struct machfb_softc *sc, uint8_t v)
{

 while ((regr(sc, FIFO_STAT) & 0xffff) > (0x8000 >> v))
  ;
}
