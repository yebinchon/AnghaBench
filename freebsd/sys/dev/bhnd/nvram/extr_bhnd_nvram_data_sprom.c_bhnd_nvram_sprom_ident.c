
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int* u_char ;
struct bhnd_nvram_io {int dummy; } ;
typedef int srevcrc ;
typedef int buf ;
struct TYPE_5__ {int flags; size_t size; size_t srev_offset; int rev; int magic_value; } ;
typedef TYPE_1__ bhnd_sprom_layout ;


 int BHND_NVRAM_CRC8_INITIAL ;
 int BHND_NVRAM_CRC8_VALID ;
 int BHND_NV_LOG (char*,size_t,...) ;
 int BHND_NV_PANIC (char*) ;
 scalar_t__ BHND_NV_VERBOSE ;
 int ENXIO ;
 int SPROM_LAYOUT_MAGIC_NONE ;
 size_t bhnd_nv_ummin (size_t,int) ;
 int bhnd_nvram_crc8 (int**,size_t,int) ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,size_t,int**,int) ;
 int bhnd_nvram_sprom_check_magic (struct bhnd_nvram_io*,TYPE_1__ const*,int *) ;
 TYPE_1__* bhnd_sprom_layouts ;
 size_t bhnd_sprom_num_layouts ;

__attribute__((used)) static int
bhnd_nvram_sprom_ident(struct bhnd_nvram_io *io,
    const bhnd_sprom_layout **ident)
{
 uint8_t crc;
 size_t crc_errors;
 size_t nbytes;
 int error;

 crc = BHND_NVRAM_CRC8_INITIAL;
 crc_errors = 0;
 nbytes = 0;



 for (size_t i = 0; i < bhnd_sprom_num_layouts; i++) {
  const bhnd_sprom_layout *layout;
  u_char buf[512];
  size_t nread;
  uint16_t magic;
  uint8_t srevcrc[2];
  uint8_t srev;
  bool crc_valid;
  bool have_magic;

  layout = &bhnd_sprom_layouts[i];
  crc_valid = 1;

  have_magic = 1;
  if ((layout->flags & SPROM_LAYOUT_MAGIC_NONE))
   have_magic = 0;
  if (nbytes > layout->size)
   BHND_NV_PANIC("SPROM layout defined out-of-order");

  nread = layout->size - nbytes;

  while (nread > 0) {
   size_t nr;

   nr = bhnd_nv_ummin(nread, sizeof(buf));

   if ((error = bhnd_nvram_io_read(io, nbytes, buf, nr)))
    return (error);

   crc = bhnd_nvram_crc8(buf, nr, crc);
   crc_valid = (crc == BHND_NVRAM_CRC8_VALID);
   if (!crc_valid)
    crc_errors++;

   nread -= nr;
   nbytes += nr;
  }



  error = bhnd_nvram_io_read(io, layout->srev_offset, &srevcrc,
      sizeof(srevcrc));
  if (error)
   return (error);

  srev = srevcrc[0];




  if (layout->rev == 1 && srev == 0x10)
   srev = 0x1;


  if (srev != layout->rev)
   continue;



  error = bhnd_nvram_sprom_check_magic(io, layout, &magic);
  if (error) {

   if (crc_valid || BHND_NV_VERBOSE) {
    BHND_NV_LOG("invalid sprom %hhu signature: "
         "0x%hx (expected 0x%hx)\n", srev,
         magic, layout->magic_value);

     return (ENXIO);
   }

   continue;
  }


  if (!crc_valid) {


   if (have_magic || BHND_NV_VERBOSE) {
    BHND_NV_LOG("sprom %hhu CRC error (crc=%#hhx, "
         "expected=%#x)\n", srev, crc,
         BHND_NVRAM_CRC8_VALID);
   }

   continue;
  }


  *ident = layout;
  return (0);
 }


 if (crc_errors > 0 && BHND_NV_VERBOSE) {
  BHND_NV_LOG("sprom parsing failed with %zu CRC errors\n",
      crc_errors);
 }

 return (ENXIO);
}
