
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
hci_hexa2int4(const char *a)
{
 if ('0' <= *a && *a <= '9')
  return (*a - '0');

 if ('A' <= *a && *a <= 'F')
  return (*a - 'A' + 0xa);

 if ('a' <= *a && *a <= 'f')
  return (*a - 'a' + 0xa);

 return (-1);
}
