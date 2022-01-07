
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ps3disk_softc {int sc_nblocks; int sc_blksize; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int PS3_LPAR_ID_PME ;
 int device_printf (int ,char*,int) ;
 int lv1_get_repository_node_value (int ,int,int,int,int ,int *,int*) ;
 int lv1_repository_string (char*) ;
 int ps3bus_get_busidx (int ) ;
 int ps3bus_get_devidx (int ) ;

__attribute__((used)) static int
ps3disk_get_disk_geometry(struct ps3disk_softc *sc)
{
 device_t dev = sc->sc_dev;
 uint64_t bus_index = ps3bus_get_busidx(dev);
 uint64_t dev_index = ps3bus_get_devidx(dev);
 uint64_t junk;
 int err;

 err = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
     (lv1_repository_string("bus") >> 32) | bus_index,
     lv1_repository_string("dev") | dev_index,
     lv1_repository_string("blk_size"), 0, &sc->sc_blksize, &junk);
 if (err) {
  device_printf(dev, "Could not get block size (0x%08x)\n", err);
  return (ENXIO);
 }

 err = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
     (lv1_repository_string("bus") >> 32) | bus_index,
     lv1_repository_string("dev") | dev_index,
     lv1_repository_string("n_blocks"), 0, &sc->sc_nblocks, &junk);
 if (err) {
  device_printf(dev, "Could not get total number of blocks "
      "(0x%08x)\n", err);
  err = ENXIO;
 }

 return (err);
}
