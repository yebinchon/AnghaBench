
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct iwi_softc {int dummy; } ;


 int CSR_READ_1 (struct iwi_softc*,int ) ;
 int CSR_WRITE_4 (struct iwi_softc*,int ,int ) ;
 int IWI_CSR_INDIRECT_ADDR ;
 int IWI_CSR_INDIRECT_DATA ;

__attribute__((used)) static __inline uint8_t
MEM_READ_1(struct iwi_softc *sc, uint32_t addr)
{
 CSR_WRITE_4(sc, IWI_CSR_INDIRECT_ADDR, addr);
 return CSR_READ_1(sc, IWI_CSR_INDIRECT_DATA);
}
