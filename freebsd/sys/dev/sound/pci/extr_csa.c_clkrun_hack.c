
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int device_t ;
typedef int * devclass_t ;
typedef int bus_space_tag_t ;


 int ENXIO ;
 int M_TEMP ;
 int X86_BUS_SPACE_IO ;
 int bus_space_read_2 (int ,int,int) ;
 int bus_space_write_2 (int ,int,int,int) ;
 int * devclass_find (char*) ;
 int devclass_get_devices (int *,int **,int*) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int free (int *,int ) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 int pci_read_config (int ,int,int) ;

__attribute__((used)) static int
clkrun_hack(int run)
{
 return 0;

}
