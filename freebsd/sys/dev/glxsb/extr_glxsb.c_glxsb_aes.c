
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct glxsb_softc {int sc_dev; int sc_sr; } ;


 int EINVAL ;
 int EIO ;
 int GLXSB_MAX_AES_LEN ;
 int SB_CBC_IV ;
 int SB_CTL_A ;
 int SB_CTL_CBC ;
 int SB_CTL_DC ;
 int SB_CTL_SC ;
 int SB_CTL_ST ;
 int SB_CTL_WK ;
 int SB_DEST_A ;
 int SB_LENGTH_A ;
 int SB_SOURCE_A ;
 int SB_WKEY ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int bus_write_region_4 (int ,int ,void*,int) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
glxsb_aes(struct glxsb_softc *sc, uint32_t control, uint32_t psrc,
    uint32_t pdst, void *key, int len, void *iv)
{
 uint32_t status;
 int i;

 if (len & 0xF) {
  device_printf(sc->sc_dev,
      "len must be a multiple of 16 (not %d)\n", len);
  return (EINVAL);
 }


 bus_write_4(sc->sc_sr, SB_SOURCE_A, psrc);


 bus_write_4(sc->sc_sr, SB_DEST_A, pdst);


 bus_write_4(sc->sc_sr, SB_LENGTH_A, len);


 if (iv != ((void*)0)) {
  bus_write_region_4(sc->sc_sr, SB_CBC_IV, iv, 4);
  control |= SB_CTL_CBC;
 }


 bus_write_region_4(sc->sc_sr, SB_WKEY, key, 4);


 bus_write_4(sc->sc_sr, SB_CTL_A,
     control | SB_CTL_WK | SB_CTL_DC | SB_CTL_SC | SB_CTL_ST);
 for (i = 0; i < GLXSB_MAX_AES_LEN * 10; i++) {
  status = bus_read_4(sc->sc_sr, SB_CTL_A);
  if ((status & SB_CTL_ST) == 0)
   return (0);
 }

 device_printf(sc->sc_dev, "operation failed to complete\n");
 return (EIO);
}
