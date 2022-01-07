
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int romid_t ;
typedef int device_t ;


 int EINVAL ;
 int device_printf (int ,char*,int *,char*) ;
 int ow_add_child (int ,int ) ;
 int ow_check_crc (int ) ;
 int * ow_child_by_romid (int ,int ) ;

__attribute__((used)) static int
ow_device_found(device_t dev, romid_t romid)
{





 if (!ow_check_crc(romid)) {
  device_printf(dev, "Device romid %8D failed CRC.\n",
      &romid, ":");
  return EINVAL;
 }




 if (ow_child_by_romid(dev, romid) != ((void*)0))
  return 0;

 return ow_add_child(dev, romid);
}
