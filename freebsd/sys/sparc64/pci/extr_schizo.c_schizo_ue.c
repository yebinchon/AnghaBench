
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct schizo_softc {int sc_dev; } ;


 int FILTER_HANDLED ;
 int SCHIZO_CTRL_READ_8 (struct schizo_softc*,int ) ;
 int STX_CTRL_CE_AFSR_ERRPNDG ;
 int STX_CTRL_UE_AFAR ;
 int STX_CTRL_UE_AFSR ;
 int device_get_nameunit (int ) ;
 int panic (char*,int ,unsigned long long,unsigned long long) ;

__attribute__((used)) static int
schizo_ue(void *arg)
{
 struct schizo_softc *sc = arg;
 uint64_t afar, afsr;
 int i;

 afar = SCHIZO_CTRL_READ_8(sc, STX_CTRL_UE_AFAR);
 for (i = 0; i < 1000; i++)
  if (((afsr = SCHIZO_CTRL_READ_8(sc, STX_CTRL_UE_AFSR)) &
      STX_CTRL_CE_AFSR_ERRPNDG) == 0)
   break;
 panic("%s: uncorrectable DMA error AFAR %#llx AFSR %#llx",
     device_get_nameunit(sc->sc_dev), (unsigned long long)afar,
     (unsigned long long)afsr);
 return (FILTER_HANDLED);
}
