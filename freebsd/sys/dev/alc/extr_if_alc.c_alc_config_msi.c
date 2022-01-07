
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_flags; int alc_int_rx_mod; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_FLAG_MSI ;
 int ALC_FLAG_MSIX ;
 int ALC_MSI_RETRANS_TIMER ;
 int ALC_USECS (int ) ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int MSI_RETRANS_MASK_SEL_LINE ;
 int MSI_RETRANS_MASK_SEL_STD ;
 int MSI_RETRANS_TIMER_MASK ;

__attribute__((used)) static void
alc_config_msi(struct alc_softc *sc)
{
 uint32_t ctl, mod;

 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0) {






  ctl = CSR_READ_4(sc, ALC_MSI_RETRANS_TIMER);
  ctl &= ~MSI_RETRANS_TIMER_MASK;
  ctl &= ~MSI_RETRANS_MASK_SEL_LINE;
  mod = ALC_USECS(sc->alc_int_rx_mod);
  if (mod == 0)
   mod = 1;
  ctl |= mod;
  if ((sc->alc_flags & ALC_FLAG_MSIX) != 0)
   CSR_WRITE_4(sc, ALC_MSI_RETRANS_TIMER, ctl |
       MSI_RETRANS_MASK_SEL_STD);
  else if ((sc->alc_flags & ALC_FLAG_MSI) != 0)
   CSR_WRITE_4(sc, ALC_MSI_RETRANS_TIMER, ctl |
       MSI_RETRANS_MASK_SEL_LINE);
  else
   CSR_WRITE_4(sc, ALC_MSI_RETRANS_TIMER, 0);
 }
}
