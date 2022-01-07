
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwn_softc {int dummy; } ;


 int IWN_BARRIER_READ_WRITE (struct iwn_softc*) ;
 int IWN_PRPH_DWORD ;
 int IWN_PRPH_RADDR ;
 int IWN_PRPH_RDATA ;
 int IWN_READ (struct iwn_softc*,int ) ;
 int IWN_WRITE (struct iwn_softc*,int ,int) ;

__attribute__((used)) static __inline uint32_t
iwn_prph_read(struct iwn_softc *sc, uint32_t addr)
{
 IWN_WRITE(sc, IWN_PRPH_RADDR, IWN_PRPH_DWORD | addr);
 IWN_BARRIER_READ_WRITE(sc);
 return IWN_READ(sc, IWN_PRPH_RDATA);
}
