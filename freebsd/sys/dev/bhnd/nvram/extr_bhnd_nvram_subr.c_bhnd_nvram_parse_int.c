
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef char uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef char u_long ;
typedef int u_int ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int bhnd_nvram_type ;
 int BHND_NV_LOG (char*,int) ;
 int BHND_NV_PANIC (char*,int) ;
 int EFTYPE ;
 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 scalar_t__ INT16_MAX ;
 scalar_t__ INT16_MIN ;
 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;
 scalar_t__ INT64_MAX ;
 scalar_t__ INT64_MIN ;
 scalar_t__ INT8_MAX ;
 scalar_t__ INT8_MIN ;
 scalar_t__ UINT16_MAX ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ UINT8_MAX ;
 scalar_t__ bhnd_nv_isdigit (char) ;
 int bhnd_nv_isspace (char const) ;
 scalar_t__ bhnd_nv_isupper (char) ;
 scalar_t__ bhnd_nv_isxdigit (char) ;
 int bhnd_nvram_is_int_type (int) ;
 size_t bhnd_nvram_type_width (int) ;

int
bhnd_nvram_parse_int(const char *str, size_t maxlen, u_int base,
    size_t *nbytes, void *outp, size_t *olen, bhnd_nvram_type otype)
{
 uint64_t value;
 uint64_t carry_max, value_max;
 uint64_t type_max;
 size_t limit, local_nbytes;
 size_t ndigits;
 bool negative, sign, twos_compl;


 if (!bhnd_nvram_is_int_type(otype))
  return (EINVAL);


 if (outp != ((void*)0))
  limit = *olen;
 else
  limit = 0;



 if (nbytes == ((void*)0))
  nbytes = &local_nbytes;

 value = 0;
 ndigits = 0;
 *nbytes = 0;
 negative = 0;
 sign = 0;


 if (base != 0 && !(base >= 2 && base <= 36))
  return (EINVAL);


 for (; *nbytes < maxlen; (*nbytes)++) {
  if (!bhnd_nv_isspace(str[*nbytes]))
   break;
 }


 if (*nbytes == maxlen)
  return (EFTYPE);


 if (str[*nbytes] == '-') {
  negative = 1;
  sign = 1;
  (*nbytes)++;
 } else if (str[*nbytes] == '+') {
  sign = 1;
  (*nbytes)++;
 }


 if (*nbytes == maxlen)
  return (EFTYPE);


 if (base == 16 || base == 0) {

  if (maxlen - *nbytes >= 2 && str[*nbytes] == '0' &&
      (str[*nbytes+1] == 'x' || str[*nbytes+1] == 'X'))
  {
   base = 16;
   (*nbytes) += 2;
  }
 }


 if (*nbytes == maxlen)
  return (EFTYPE);


 if (base == 0) {
  if (str[*nbytes] == '0') {
   base = 8;
  } else {
   base = 10;
  }
 }



 if (!sign && base == 16)
  twos_compl = 1;
 else
  twos_compl = 0;


 switch (otype) {
 case 136:
 case 128:
  type_max = (uint64_t)UINT8_MAX;
  break;
 case 131:
  type_max = (uint64_t)UINT16_MAX;
  break;
 case 130:
  type_max = (uint64_t)UINT32_MAX;
  break;
 case 129:
  type_max = (uint64_t)UINT64_MAX;
  break;

 case 132:
  if (twos_compl)
   type_max = (uint64_t)UINT8_MAX;
  else if (negative)
   type_max = -(uint64_t)INT8_MIN;
  else
   type_max = (uint64_t)INT8_MAX;
  break;

 case 135:
  if (twos_compl)
   type_max = (uint64_t)UINT16_MAX;
  else if (negative)
   type_max = -(uint64_t)INT16_MIN;
  else
   type_max = (uint64_t)INT16_MAX;
  break;

 case 134:
  if (twos_compl)
   type_max = (uint64_t)UINT32_MAX;
  else if (negative)
   type_max = -(uint64_t)INT32_MIN;
  else
   type_max = (uint64_t)INT32_MAX;
  break;

 case 133:
  if (twos_compl)
   type_max = (uint64_t)UINT64_MAX;
  else if (negative)
   type_max = -(uint64_t)INT64_MIN;
  else
   type_max = (uint64_t)INT64_MAX;
  break;

 default:
  BHND_NV_LOG("unsupported integer type: %d\n", otype);
  return (EINVAL);
 }


 value_max = type_max / (uint64_t)base;


 carry_max = type_max % (uint64_t)base;


 for (; *nbytes < maxlen; (*nbytes)++) {
  u_long carry;
  char c;


  c = str[*nbytes];
  if (bhnd_nv_isdigit(c)) {
   carry = c - '0';
  } else if (bhnd_nv_isxdigit(c)) {
   if (bhnd_nv_isupper(c))
    carry = (c - 'A') + 10;
   else
    carry = (c - 'a') + 10;
  } else {

   break;
  }




  if (carry >= (uint64_t)base)
   break;


  ndigits++;

  if (value > value_max) {

   return (ERANGE);
  } else if (value == value_max && carry > carry_max) {

   return (ERANGE);
  }

  value *= (uint64_t)base;
  value += carry;
 }



 if (ndigits == 0)
  return (EFTYPE);

 if (negative)
  value = -value;


 *olen = bhnd_nvram_type_width(otype);
 if (outp == ((void*)0))
  return (0);
 else if (limit < *olen)
  return (ENOMEM);


 switch (otype) {
 case 136:
 case 128:
  *(uint8_t *)outp = (uint8_t)value;
  break;
 case 131:
  *(uint16_t *)outp = (uint16_t)value;
  break;
 case 130:
  *(uint32_t *)outp = (uint32_t)value;
  break;
 case 129:
  *(uint64_t *)outp = (uint64_t)value;
  break;

 case 132:
  *(int8_t *)outp = (int8_t)(int64_t)value;
  break;
 case 135:
  *(int16_t *)outp = (int16_t)(int64_t)value;
  break;
 case 134:
  *(int32_t *)outp = (int32_t)(int64_t)value;
  break;
 case 133:
  *(int64_t *)outp = (int64_t)value;
  break;
 default:

  BHND_NV_PANIC("unhandled type %d\n", otype);
 }

 return (0);
}
