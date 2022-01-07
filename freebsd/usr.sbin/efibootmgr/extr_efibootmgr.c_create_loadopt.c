
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int const* efidp ;
typedef int const efi_char ;
typedef int attributes ;


 size_t BAD_LENGTH ;
 int free (int const*) ;
 int le16enc (int *,size_t) ;
 int le32enc (int *,int ) ;
 int memcpy (int *,int const*,size_t) ;
 int utf8_to_ucs2 (char const*,int const**,size_t*) ;

__attribute__((used)) static size_t
create_loadopt(uint8_t *buf, size_t bufmax, uint32_t attributes, efidp dp, size_t dp_size,
    const char *description, const uint8_t *optional_data, size_t optional_data_size)
{
 efi_char *bbuf = ((void*)0);
 uint8_t *pos = buf;
 size_t desc_len = 0;
 size_t len;

 if (optional_data == ((void*)0) && optional_data_size != 0)
  return BAD_LENGTH;
 if (dp == ((void*)0) && dp_size != 0)
  return BAD_LENGTH;




 utf8_to_ucs2(description, &bbuf, &desc_len);
 len = sizeof(uint32_t) + sizeof(uint16_t) + desc_len + dp_size + optional_data_size;
 if (len > bufmax) {
  free(bbuf);
  return BAD_LENGTH;
 }

 le32enc(pos, attributes);
 pos += sizeof (attributes);

 le16enc(pos, dp_size);
 pos += sizeof (uint16_t);

 memcpy(pos, bbuf, desc_len);
 pos += desc_len;
 free(bbuf);

 memcpy(pos, dp, dp_size);
 pos += dp_size;

 if (optional_data && optional_data_size > 0) {
  memcpy(pos, optional_data, optional_data_size);
  pos += optional_data_size;
 }

 return pos - buf;
}
