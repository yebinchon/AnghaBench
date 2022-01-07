
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ATA_PIO ;

__attribute__((used)) static int
ata_iobus_sub_setmode(device_t parent, int target, int mode)
{

 return (ATA_PIO);
}
