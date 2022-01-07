
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bhnd_nvram_io {int dummy; } ;


 int BHND_NV_ASSERT (int,char*) ;
 scalar_t__ NVRAM_TLV_TYPE_END ;
 size_t bhnd_nvram_io_getsize (struct bhnd_nvram_io*) ;
 int bhnd_nvram_tlv_next_record (struct bhnd_nvram_io*,size_t*,int *,scalar_t__*) ;

__attribute__((used)) static int
bhnd_nvram_tlv_parse_size(struct bhnd_nvram_io *io, size_t *size)
{
 size_t next;
 uint8_t tag;
 int error;


 next = 0x0;
 *size = 0x0;


 do {
  error = bhnd_nvram_tlv_next_record(io, &next, ((void*)0), &tag);
  if (error)
   return (error);
 } while (tag != NVRAM_TLV_TYPE_END);


 BHND_NV_ASSERT(next <= bhnd_nvram_io_getsize(io),
     ("parse returned invalid EOF offset"));

 *size = next;
 return (0);
}
