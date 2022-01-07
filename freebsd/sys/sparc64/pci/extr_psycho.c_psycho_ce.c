
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_long ;
struct psycho_softc {int sc_mtx; int sc_dev; } ;


 int FILTER_HANDLED ;
 int PSR_CE_AFA ;
 int PSR_CE_AFS ;
 scalar_t__ PSYCHO_READ8 (struct psycho_softc*,int ) ;
 int PSYCHO_WRITE8 (struct psycho_softc*,int ,scalar_t__) ;
 int device_printf (int ,char*,int ,int ) ;
 int mtx_lock_spin (int ) ;
 int mtx_unlock_spin (int ) ;

__attribute__((used)) static int
psycho_ce(void *arg)
{
 struct psycho_softc *sc = arg;
 uint64_t afar, afsr;

 mtx_lock_spin(sc->sc_mtx);
 afar = PSYCHO_READ8(sc, PSR_CE_AFA);
 afsr = PSYCHO_READ8(sc, PSR_CE_AFS);
 device_printf(sc->sc_dev, "correctable DMA error AFAR %#lx "
     "AFSR %#lx\n", (u_long)afar, (u_long)afsr);

 PSYCHO_WRITE8(sc, PSR_CE_AFS, afsr);
 mtx_unlock_spin(sc->sc_mtx);
 return (FILTER_HANDLED);
}
