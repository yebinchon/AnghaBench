
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int quad_t ;


 int KENV_MNAMELEN ;
 scalar_t__ KENV_MVALLEN ;
 int getenv_string (char const*,char*,int) ;
 int strtoq (char*,char**,int ) ;

int
getenv_quad(const char *name, quad_t *data)
{
 char value[KENV_MNAMELEN + 1 + KENV_MVALLEN + 1];
 char *vtp;
 quad_t iv;

 if (!getenv_string(name, value, sizeof(value)))
  return (0);
 iv = strtoq(value, &vtp, 0);
 if (vtp == value || (vtp[0] != '\0' && vtp[1] != '\0'))
  return (0);
 switch (vtp[0]) {
 case 't': case 'T':
  iv *= 1024;

 case 'g': case 'G':
  iv *= 1024;

 case 'm': case 'M':
  iv *= 1024;

 case 'k': case 'K':
  iv *= 1024;
 case '\0':
  break;
 default:
  return (0);
 }
 *data = iv;
 return (1);
}
