
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sc_info {int rbuf; int pbuf; } ;


 int HDSPE_MAX_SLOTS ;
 scalar_t__ HDSPE_PAGE_ADDR_BUF_IN ;
 scalar_t__ HDSPE_PAGE_ADDR_BUF_OUT ;
 int hdspe_write_4 (struct sc_info*,scalar_t__,scalar_t__) ;
 scalar_t__ vtophys (int ) ;

__attribute__((used)) static void
hdspe_map_dmabuf(struct sc_info *sc)
{
 uint32_t paddr, raddr;
 int i;

 paddr = vtophys(sc->pbuf);
 raddr = vtophys(sc->rbuf);

 for (i = 0; i < HDSPE_MAX_SLOTS * 16; i++) {
  hdspe_write_4(sc, HDSPE_PAGE_ADDR_BUF_OUT + 4 * i,
                    paddr + i * 4096);
  hdspe_write_4(sc, HDSPE_PAGE_ADDR_BUF_IN + 4 * i,
                    raddr + i * 4096);
 }
}
