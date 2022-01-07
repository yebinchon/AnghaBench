
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int dummy; } ;
typedef int bus_size_t ;


 int BGE_CLRBIT (struct bge_softc*,int ,int) ;
 int BGE_TIMEOUT ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int DELAY (int) ;

__attribute__((used)) static void
bge_stop_block(struct bge_softc *sc, bus_size_t reg, uint32_t bit)
{
 int i;

 BGE_CLRBIT(sc, reg, bit);

 for (i = 0; i < BGE_TIMEOUT; i++) {
  if ((CSR_READ_4(sc, reg) & bit) == 0)
   return;
  DELAY(100);
        }
}
