
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
nfsrv_hexdigit(char c, int *err)
{

 *err = 0;
 if (c >= '0' && c <= '9')
  return (c - '0');
 if (c >= 'a' && c <= 'f')
  return (c - 'a' + ((char)10));
 if (c >= 'A' && c <= 'F')
  return (c - 'A' + ((char)10));

 *err = 1;
 return (1);
}
