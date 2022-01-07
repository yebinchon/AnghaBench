
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwn_softc {int dummy; } ;


 int IWN_BARRIER_WRITE (struct iwn_softc*) ;
 int IWN_MEM_WADDR ;
 int IWN_MEM_WDATA ;
 int IWN_WRITE (struct iwn_softc*,int ,int ) ;

__attribute__((used)) static __inline void
iwn_mem_write(struct iwn_softc *sc, uint32_t addr, uint32_t data)
{
 IWN_WRITE(sc, IWN_MEM_WADDR, addr);
 IWN_BARRIER_WRITE(sc);
 IWN_WRITE(sc, IWN_MEM_WDATA, data);
}
