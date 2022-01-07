
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct atse_softc {int atse_mem_res; } ;
typedef int bus_addr_t ;


 int DPRINTF (char*,char const*,int const,char const*,char*,int,int,int) ;
 int bus_read_4 (int ,int) ;
 int le32toh (int) ;

__attribute__((used)) static inline uint16_t
pxx_read_2(struct atse_softc *sc, bus_addr_t bmcr, uint32_t reg, const char *f,
    const int l, const char *s)
{
 uint32_t val4;
 uint16_t val;

 val4 = bus_read_4(sc->atse_mem_res, (bmcr + reg) * 4);
 val = le32toh(val4) & 0x0000ffff;
 DPRINTF("[%s:%d] %s R %s 0x%08x (0x%08jx) = 0x%04x\n", f, l, s,
     "atse_mem_res", reg, (bmcr + reg) * 4, val);

 return (val);
}
