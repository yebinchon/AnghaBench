
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exca_softc {int memalloc; } ;
struct TYPE_2__ {int memenable; } ;


 int EXCA_ADDRWIN_ENABLE ;
 int EXCA_MEM_WINS ;
 int exca_clrb (struct exca_softc*,int ,int ) ;
 TYPE_1__* mem_map_index ;
 int panic (char*) ;

__attribute__((used)) static void
exca_mem_unmap(struct exca_softc *sc, int window)
{
 if (window < 0 || window >= EXCA_MEM_WINS)
  panic("exca_mem_unmap: window out of range");

 exca_clrb(sc, EXCA_ADDRWIN_ENABLE, mem_map_index[window].memenable);
 sc->memalloc &= ~(1 << window);
}
