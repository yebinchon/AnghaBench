
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atse_softc {int atse_mem_res; } ;


 int DPRINTF (char*,char const*,int const,char*,int,int,int) ;
 int bus_read_4 (int ,int) ;
 int le32toh (int ) ;

__attribute__((used)) static inline uint32_t
csr_read_4(struct atse_softc *sc, uint32_t reg, const char *f, const int l)
{
 uint32_t val4;

 val4 = le32toh(bus_read_4(sc->atse_mem_res, reg * 4));
 DPRINTF("[%s:%d] CSR R %s 0x%08x (0x%08x) = 0x%08x\n", f, l,
     "atse_mem_res", reg, reg * 4, val4);

 return (val4);
}
