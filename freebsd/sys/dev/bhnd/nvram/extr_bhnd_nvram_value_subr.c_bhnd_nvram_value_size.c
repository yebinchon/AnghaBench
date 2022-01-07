
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int bhnd_nvram_type ;
typedef int bhnd_nvram_bool_t ;
 int BHND_NV_LOG (char*,int ,size_t) ;
 int BHND_NV_PANIC (char*,int) ;
 size_t SIZE_MAX ;
 int bhnd_nvram_base_type (int) ;
 int bhnd_nvram_is_array_type (int) ;
 int bhnd_nvram_type_name (int ) ;
 size_t bhnd_nvram_type_width (int) ;
 size_t strnlen (void const*,size_t) ;

size_t
bhnd_nvram_value_size(const void *inp, size_t ilen, bhnd_nvram_type itype,
    size_t nelem)
{

 if (nelem == 0)
  return (0);


 if (!bhnd_nvram_is_array_type(itype) && nelem != 1)
  return (0);

 switch (itype) {
 case 128:
 case 134:
 case 132:
 case 130:
 case 139:
 case 145:
 case 143:
 case 141:
 case 148:
 case 150:{
  size_t width;

  width = bhnd_nvram_type_width(itype);


  if (SIZE_MAX / nelem < width) {
   BHND_NV_LOG("cannot represent size %s[%zu]\n",
       bhnd_nvram_type_name(bhnd_nvram_base_type(itype)),
       nelem);
   return (0);
  }

  return (nelem * width);
 }

 case 136: {
  const char *p;
  size_t total_size;

  if (inp == ((void*)0))
   return (0);



  p = inp;
  total_size = 0;
  for (size_t i = 0; i < nelem; i++) {
   size_t elem_size;

   elem_size = strnlen(p, ilen - total_size);
   p += elem_size;


   if (total_size < ilen && *p == '\0') {
    elem_size++;
    p++;
   }





   if (SIZE_MAX - total_size < elem_size)
    return (0);

   total_size += elem_size;
  }

  return (total_size);
 }

 case 137: {
  size_t size;

  if (inp == ((void*)0))
   return (0);


  size = strnlen(inp, ilen);



  if (size < ilen)
   size++;

  return (size);
 }

 case 138:
  return (0);

 case 147:
  if (inp == ((void*)0))
   return (0);

  return (ilen);

 case 151:
  return (sizeof(bhnd_nvram_bool_t));

 case 140:
 case 129:
 case 149:
  return (sizeof(uint8_t));

 case 146:
 case 135:
  return (sizeof(uint16_t));

 case 144:
 case 133:
  return (sizeof(uint32_t));

 case 131:
 case 142:
  return (sizeof(uint64_t));
 }


 BHND_NV_PANIC("bhnd nvram type %u unknown", itype);
}
