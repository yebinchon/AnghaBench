
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int * device_t ;


 int ALTERA_ETHERNET_OPTION_BITS_LEN ;
 scalar_t__ ALTERA_ETHERNET_OPTION_BITS_OFF ;
 int ATSE_ETHERNET_OPTION_BITS_READ ;
 int ENOENT ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int * atse_ethernet_option_bits ;
 int atse_ethernet_option_bits_flag ;
 struct resource* bus_alloc_resource_any (int *,int ,int*,int) ;
 int bus_read_1 (struct resource*,scalar_t__) ;
 int bus_release_resource (int *,int ,int,struct resource*) ;
 int * device_find_child (int ,char*,int ) ;
 int device_get_parent (int *) ;

__attribute__((used)) static int
atse_ethernet_option_bits_read_fdt(device_t dev)
{
 struct resource *res;
 device_t fdev;
 int i, rid;

 if (atse_ethernet_option_bits_flag & ATSE_ETHERNET_OPTION_BITS_READ) {
  return (0);
 }

 fdev = device_find_child(device_get_parent(dev), "cfi", 0);
 if (fdev == ((void*)0)) {
  return (ENOENT);
 }

 rid = 0;
 res = bus_alloc_resource_any(fdev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (res == ((void*)0)) {
  return (ENXIO);
 }

 for (i = 0; i < ALTERA_ETHERNET_OPTION_BITS_LEN; i++) {
  atse_ethernet_option_bits[i] = bus_read_1(res,
      ALTERA_ETHERNET_OPTION_BITS_OFF + i);
 }

 bus_release_resource(fdev, SYS_RES_MEMORY, rid, res);
 atse_ethernet_option_bits_flag |= ATSE_ETHERNET_OPTION_BITS_READ;

 return (0);
}
