
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const uint8_t ;


 int sprintf (char const*,char*,char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
append_var(uint8_t *buf, int len, const char *var_name, const char *var_value)
{
 int i, append_len;

 while (len > 0) {
  i = strlen(buf) + 1;
  if (i == 1)
   break;
  len -= i;
  buf += i;
 }
 append_len = strlen(var_name) + strlen(var_value) + 2;
 if (len < append_len)
  return -1;
 sprintf(buf, "%s=%s", var_name, var_value);
 return 0;
}
