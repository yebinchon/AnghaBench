
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct softdma_softc {int dummy; } ;


 scalar_t__ AVALON_FIFO_TX_BASIC_OPTS_DEPTH ;
 scalar_t__ softdma_fill_level (struct softdma_softc*) ;

__attribute__((used)) static uint32_t
fifo_fill_level_wait(struct softdma_softc *sc)
{
 uint32_t val;

 do
  val = softdma_fill_level(sc);
 while (val == AVALON_FIFO_TX_BASIC_OPTS_DEPTH);

 return (val);
}
