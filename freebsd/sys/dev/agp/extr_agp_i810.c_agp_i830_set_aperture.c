
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct agp_i810_softc {int bdev; } ;
typedef int device_t ;


 int AGP_I830_GCC1 ;
 int AGP_I830_GCC1_GMASIZE ;
 int AGP_I830_GCC1_GMASIZE_128 ;
 int AGP_I830_GCC1_GMASIZE_64 ;
 int EINVAL ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
agp_i830_set_aperture(device_t dev, u_int32_t aperture)
{
 struct agp_i810_softc *sc;
 u_int16_t gcc1;

 sc = device_get_softc(dev);

 if (aperture != 64 * 1024 * 1024 &&
     aperture != 128 * 1024 * 1024) {
  device_printf(dev, "bad aperture size %d\n", aperture);
  return (EINVAL);
 }
 gcc1 = pci_read_config(sc->bdev, AGP_I830_GCC1, 2);
 gcc1 &= ~AGP_I830_GCC1_GMASIZE;
 if (aperture == 64 * 1024 * 1024)
  gcc1 |= AGP_I830_GCC1_GMASIZE_64;
 else
  gcc1 |= AGP_I830_GCC1_GMASIZE_128;

 pci_write_config(sc->bdev, AGP_I830_GCC1, gcc1, 2);
 return (0);
}
