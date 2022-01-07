
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_src ;







const char *
bhnd_nvram_src_name(bhnd_nvram_src nvram_src)
{
 switch (nvram_src) {
 case 131:
  return ("flash");
 case 130:
  return ("OTP");
 case 129:
  return ("SPROM");
 case 128:
  return ("none");
 default:
  return ("unknown");
 }
}
