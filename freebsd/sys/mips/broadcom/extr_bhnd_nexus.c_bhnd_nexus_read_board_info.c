
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_board_info {scalar_t__ board_vendor; } ;
typedef int device_t ;


 scalar_t__ PCI_VENDOR_BROADCOM ;
 int bhnd_bus_generic_read_board_info (int ,int ,struct bhnd_board_info*) ;

__attribute__((used)) static int
bhnd_nexus_read_board_info(device_t dev, device_t child,
    struct bhnd_board_info *info)
{
 int error;


 if ((error = bhnd_bus_generic_read_board_info(dev, child, info)))
  return (error);



 if (info->board_vendor == 0)
  info->board_vendor = PCI_VENDOR_BROADCOM;

 return (0);
}
