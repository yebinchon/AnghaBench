
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;


 int IWM_BARRIER_WRITE (struct iwm_softc*) ;
 int IWM_HBUS_TARG_PRPH_WADDR ;
 int IWM_HBUS_TARG_PRPH_WDAT ;
 int IWM_WRITE (struct iwm_softc*,int ,int) ;

void
iwm_write_prph(struct iwm_softc *sc, uint32_t addr, uint32_t val)
{
 IWM_WRITE(sc,
     IWM_HBUS_TARG_PRPH_WADDR, ((addr & 0x000fffff) | (3 << 24)));
 IWM_BARRIER_WRITE(sc);
 IWM_WRITE(sc, IWM_HBUS_TARG_PRPH_WDAT, val);
}
