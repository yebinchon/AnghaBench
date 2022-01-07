
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int memmove (char*,char*,int) ;
 int memset (char*,char,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int
remove_var(uint8_t *buf, int len, const char *var_name)
{
 int nremoved, i, name_len;

 nremoved = 0;
 name_len = strlen(var_name);
 while (len > 0) {
  i = strlen(buf) + 1;
  if (i == 1)
   break;
  if (strncmp(buf, var_name, name_len) == 0 && buf[name_len] == '=') {
   memmove(buf, buf + i, len - i);
   memset(buf + len - i, '\0', i);
   nremoved += 1;
   continue;
  }
  len -= i;
  buf += i;
 }
 return nremoved;
}
