
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {int* csd_data; } ;
struct altera_sdcard_softc {int as_mediasize; int as_dev; TYPE_1__ as_csd; } ;


 size_t ALTERA_SDCARD_CSD_C_SIZE_BYTE0 ;
 size_t ALTERA_SDCARD_CSD_C_SIZE_BYTE1 ;
 size_t ALTERA_SDCARD_CSD_C_SIZE_BYTE2 ;
 int ALTERA_SDCARD_CSD_C_SIZE_LSHIFT1 ;
 int ALTERA_SDCARD_CSD_C_SIZE_LSHIFT2 ;
 int ALTERA_SDCARD_CSD_C_SIZE_MASK0 ;
 int ALTERA_SDCARD_CSD_C_SIZE_MASK2 ;
 size_t ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE0 ;
 size_t ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE1 ;
 int ALTERA_SDCARD_CSD_C_SIZE_MULT_LSHIFT1 ;
 int ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK0 ;
 int ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK1 ;
 int ALTERA_SDCARD_CSD_C_SIZE_MULT_RSHIFT0 ;
 int ALTERA_SDCARD_CSD_C_SIZE_RSHIFT0 ;
 size_t ALTERA_SDCARD_CSD_READ_BL_LEN_BYTE ;
 int ALTERA_SDCARD_CSD_READ_BL_LEN_MASK ;
 int ALTERA_SDCARD_LOCK_ASSERT (struct altera_sdcard_softc*) ;
 int ENXIO ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
altera_sdcard_process_csd0(struct altera_sdcard_softc *sc)
{
 uint64_t c_size, c_size_mult, read_bl_len;
 uint8_t byte0, byte1, byte2;

 ALTERA_SDCARD_LOCK_ASSERT(sc);
 read_bl_len = sc->as_csd.csd_data[ALTERA_SDCARD_CSD_READ_BL_LEN_BYTE];
 read_bl_len &= ALTERA_SDCARD_CSD_READ_BL_LEN_MASK;

 byte0 = sc->as_csd.csd_data[ALTERA_SDCARD_CSD_C_SIZE_BYTE0];
 byte0 &= ALTERA_SDCARD_CSD_C_SIZE_MASK0;
 byte1 = sc->as_csd.csd_data[ALTERA_SDCARD_CSD_C_SIZE_BYTE1];
 byte2 = sc->as_csd.csd_data[ALTERA_SDCARD_CSD_C_SIZE_BYTE2];
 byte2 &= ALTERA_SDCARD_CSD_C_SIZE_MASK2;
 c_size = (byte0 >> ALTERA_SDCARD_CSD_C_SIZE_RSHIFT0) |
     (byte1 << ALTERA_SDCARD_CSD_C_SIZE_LSHIFT1) |
     (byte2 << ALTERA_SDCARD_CSD_C_SIZE_LSHIFT2);

 byte0 = sc->as_csd.csd_data[ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE0];
 byte0 &= ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK0;
 byte1 = sc->as_csd.csd_data[ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE1];
 byte1 &= ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK1;
 c_size_mult = (byte0 >> ALTERA_SDCARD_CSD_C_SIZE_MULT_RSHIFT0) |
     (byte1 << ALTERA_SDCARD_CSD_C_SIZE_MULT_LSHIFT1);





 if (c_size == 0 && c_size_mult == 0 && read_bl_len == 0) {
  device_printf(sc->as_dev, "Ignored zero-size card\n");
  return (ENXIO);
 }
 sc->as_mediasize = (c_size + 1) * (1 << (c_size_mult + 2)) *
     (1 << read_bl_len);
 return (0);
}
