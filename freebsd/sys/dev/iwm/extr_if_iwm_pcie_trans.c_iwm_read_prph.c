
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;


 int IWM_BARRIER_READ_WRITE (struct iwm_softc*) ;
 int IWM_HBUS_TARG_PRPH_RADDR ;
 int IWM_HBUS_TARG_PRPH_RDAT ;
 int IWM_READ (struct iwm_softc*,int ) ;
 int IWM_WRITE (struct iwm_softc*,int ,int) ;

uint32_t
iwm_read_prph(struct iwm_softc *sc, uint32_t addr)
{
 IWM_WRITE(sc,
     IWM_HBUS_TARG_PRPH_RADDR, ((addr & 0x000fffff) | (3 << 24)));
 IWM_BARRIER_READ_WRITE(sc);
 return IWM_READ(sc, IWM_HBUS_TARG_PRPH_RDAT);
}
