
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int boolean_t ;
typedef int POCE_SOFTC ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bcmp (int *,char const*,int) ;
 int oce_mbox_get_flashrom_crc (int ,int *,scalar_t__,int) ;

__attribute__((used)) static boolean_t
oce_img_flashing_required(POCE_SOFTC sc, const char *p,
    int img_optype, uint32_t img_offset,
    uint32_t img_size, uint32_t hdrs_size)
{
 uint32_t crc_offset;
 uint8_t flashed_crc[4];
 int status;

 crc_offset = hdrs_size + img_offset + img_size - 4;

 p += crc_offset;

 status = oce_mbox_get_flashrom_crc(sc, flashed_crc,
   (img_size - 4), img_optype);
 if (status)
  return TRUE;


 if (bcmp(flashed_crc, p, 4))
  return TRUE;
 else
  return FALSE;
}
