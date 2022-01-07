
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hci_hexa2int4 (char const*) ;

__attribute__((used)) static int
hci_hexa2int8(const char *a)
{
 int hi = hci_hexa2int4(a);
 int lo = hci_hexa2int4(a + 1);

 if (hi < 0 || lo < 0)
  return (-1);

 return ((hi << 4) | lo);
}
