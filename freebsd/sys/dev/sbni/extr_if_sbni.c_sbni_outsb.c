
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sbni_softc {scalar_t__ io_off; int io_res; } ;


 scalar_t__ DAT ;
 int bus_space_write_multi_1 (int ,int ,scalar_t__,int *,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static __inline void
sbni_outsb(struct sbni_softc *sc, u_char *from, u_int len)
{
 bus_space_write_multi_1(
     rman_get_bustag(sc->io_res),
     rman_get_bushandle(sc->io_res),
     sc->io_off + DAT, from, len);
}
