
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct schizo_softc {int sc_mtx; int sc_dev; int sc_stats_dma_ce; } ;


 int FILTER_HANDLED ;
 int SCHIZO_CTRL_READ_8 (struct schizo_softc*,int ) ;
 int SCHIZO_CTRL_WRITE_8 (struct schizo_softc*,int ,int) ;
 int STX_CTRL_CE_AFAR ;
 int STX_CTRL_CE_AFSR_ERRPNDG ;
 int STX_CTRL_UE_AFSR ;
 int device_printf (int ,char*,unsigned long long,unsigned long long) ;
 int mtx_lock_spin (int ) ;
 int mtx_unlock_spin (int ) ;

__attribute__((used)) static int
schizo_ce(void *arg)
{
 struct schizo_softc *sc = arg;
 uint64_t afar, afsr;
 int i;

 mtx_lock_spin(sc->sc_mtx);

 afar = SCHIZO_CTRL_READ_8(sc, STX_CTRL_CE_AFAR);
 for (i = 0; i < 1000; i++)
  if (((afsr = SCHIZO_CTRL_READ_8(sc, STX_CTRL_UE_AFSR)) &
      STX_CTRL_CE_AFSR_ERRPNDG) == 0)
   break;
 sc->sc_stats_dma_ce++;
 device_printf(sc->sc_dev,
     "correctable DMA error AFAR %#llx AFSR %#llx\n",
     (unsigned long long)afar, (unsigned long long)afsr);


 SCHIZO_CTRL_WRITE_8(sc, STX_CTRL_UE_AFSR, afsr);

 mtx_unlock_spin(sc->sc_mtx);

 return (FILTER_HANDLED);
}
