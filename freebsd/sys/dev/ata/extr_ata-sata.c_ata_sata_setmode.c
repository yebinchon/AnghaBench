
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ATA_UDMA5 ;
 int min (int,int ) ;

int
ata_sata_setmode(device_t dev, int target, int mode)
{

 return (min(mode, ATA_UDMA5));
}
