
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int device_t ;


 int pci_read_config (int ,int,int) ;

__attribute__((used)) static int
cardbus_read_tuple_conf(device_t cbdev, device_t child, uint32_t start,
    uint32_t *off, int *tupleid, int *len, uint8_t *tupledata)
{
 int i, j;
 uint32_t e;
 uint32_t loc;

 loc = start + *off;

 e = pci_read_config(child, loc & ~0x3, 4);
 e >>= 8 * (loc & 0x3);
 *len = 0;
 for (i = loc, j = -2; j < *len; j++, i++) {
  if ((i & 0x3) == 0)
   e = pci_read_config(child, i, 4);
  if (j == -2)
   *tupleid = 0xff & e;
  else if (j == -1)
   *len = 0xff & e;
  else
   tupledata[j] = 0xff & e;
  e >>= 8;
 }
 *off += *len + 2;
 return (0);
}
