
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atse_softc {int atse_mem_res; } ;


 int DPRINTF (char*,char const*,int const,char*,int,int,int) ;
 int bus_write_4 (int ,int,int) ;
 int htole32 (int) ;

__attribute__((used)) static inline void
csr_write_4(struct atse_softc *sc, uint32_t reg, uint32_t val4,
    const char *f, const int l)
{

 val4 = htole32(val4);
 DPRINTF("[%s:%d] CSR W %s 0x%08x (0x%08x) = 0x%08x\n", f, l,
     "atse_mem_res", reg, reg * 4, val4);
 bus_write_4(sc->atse_mem_res, reg * 4, val4);
}
