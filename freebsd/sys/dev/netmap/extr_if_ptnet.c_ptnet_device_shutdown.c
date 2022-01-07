
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_softc {int iomem; } ;


 int PTNETMAP_PTCTL_DELETE ;
 int PTNET_IO_CSB_GH_BAH ;
 int PTNET_IO_CSB_GH_BAL ;
 int PTNET_IO_CSB_HG_BAH ;
 int PTNET_IO_CSB_HG_BAL ;
 int bus_write_4 (int ,int ,int ) ;
 int ptnet_nm_ptctl (struct ptnet_softc*,int ) ;

__attribute__((used)) static void
ptnet_device_shutdown(struct ptnet_softc *sc)
{
 ptnet_nm_ptctl(sc, PTNETMAP_PTCTL_DELETE);
 bus_write_4(sc->iomem, PTNET_IO_CSB_GH_BAH, 0);
 bus_write_4(sc->iomem, PTNET_IO_CSB_GH_BAL, 0);
 bus_write_4(sc->iomem, PTNET_IO_CSB_HG_BAH, 0);
 bus_write_4(sc->iomem, PTNET_IO_CSB_HG_BAL, 0);
}
