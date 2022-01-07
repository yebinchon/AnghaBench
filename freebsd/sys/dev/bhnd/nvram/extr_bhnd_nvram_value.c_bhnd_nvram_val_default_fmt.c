
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_type ;
 int BHND_NV_PANIC (char*,int) ;
 int const bhnd_nvram_val_bool_array_fmt ;
 int const bhnd_nvram_val_bool_fmt ;
 int const bhnd_nvram_val_char_array_fmt ;
 int const bhnd_nvram_val_char_fmt ;
 int const bhnd_nvram_val_data_fmt ;
 int const bhnd_nvram_val_int16_array_fmt ;
 int const bhnd_nvram_val_int16_fmt ;
 int const bhnd_nvram_val_int32_array_fmt ;
 int const bhnd_nvram_val_int32_fmt ;
 int const bhnd_nvram_val_int64_array_fmt ;
 int const bhnd_nvram_val_int64_fmt ;
 int const bhnd_nvram_val_int8_array_fmt ;
 int const bhnd_nvram_val_int8_fmt ;
 int const bhnd_nvram_val_null_fmt ;
 int const bhnd_nvram_val_string_array_fmt ;
 int const bhnd_nvram_val_string_fmt ;
 int const bhnd_nvram_val_uint16_array_fmt ;
 int const bhnd_nvram_val_uint16_fmt ;
 int const bhnd_nvram_val_uint32_array_fmt ;
 int const bhnd_nvram_val_uint32_fmt ;
 int const bhnd_nvram_val_uint64_array_fmt ;
 int const bhnd_nvram_val_uint64_fmt ;
 int const bhnd_nvram_val_uint8_array_fmt ;
 int const bhnd_nvram_val_uint8_fmt ;

const bhnd_nvram_val_fmt *
bhnd_nvram_val_default_fmt(bhnd_nvram_type type)
{
 switch (type) {
 case 129:
  return (&bhnd_nvram_val_uint8_fmt);
 case 135:
  return (&bhnd_nvram_val_uint16_fmt);
 case 133:
  return (&bhnd_nvram_val_uint32_fmt);
 case 131:
  return (&bhnd_nvram_val_uint64_fmt);
 case 140:
  return (&bhnd_nvram_val_int8_fmt);
 case 146:
  return (&bhnd_nvram_val_int16_fmt);
 case 144:
  return (&bhnd_nvram_val_int32_fmt);
 case 142:
  return (&bhnd_nvram_val_int64_fmt);
 case 149:
  return (&bhnd_nvram_val_char_fmt);
 case 137:
  return (&bhnd_nvram_val_string_fmt);
 case 151:
  return (&bhnd_nvram_val_bool_fmt);
 case 138:
  return (&bhnd_nvram_val_null_fmt);
 case 147:
  return (&bhnd_nvram_val_data_fmt);
 case 128:
  return (&bhnd_nvram_val_uint8_array_fmt);
 case 134:
  return (&bhnd_nvram_val_uint16_array_fmt);
 case 132:
  return (&bhnd_nvram_val_uint32_array_fmt);
 case 130:
  return (&bhnd_nvram_val_uint64_array_fmt);
 case 139:
  return (&bhnd_nvram_val_int8_array_fmt);
 case 145:
  return (&bhnd_nvram_val_int16_array_fmt);
 case 143:
  return (&bhnd_nvram_val_int32_array_fmt);
 case 141:
  return (&bhnd_nvram_val_int64_array_fmt);
 case 148:
  return (&bhnd_nvram_val_char_array_fmt);
 case 136:
  return (&bhnd_nvram_val_string_array_fmt);
 case 150:
  return (&bhnd_nvram_val_bool_array_fmt);
 }


 BHND_NV_PANIC("bhnd nvram type %u unknown", type);
}
