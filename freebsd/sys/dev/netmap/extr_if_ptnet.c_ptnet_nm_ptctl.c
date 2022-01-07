
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ptnet_softc {int iomem; } ;


 int PTNET_IO_PTCTL ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static uint32_t
ptnet_nm_ptctl(struct ptnet_softc *sc, uint32_t cmd)
{




 bus_write_4(sc->iomem, PTNET_IO_PTCTL, cmd);
 return bus_read_4(sc->iomem, PTNET_IO_PTCTL);
}
