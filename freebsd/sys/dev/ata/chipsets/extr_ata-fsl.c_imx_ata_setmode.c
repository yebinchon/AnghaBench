
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ATA_PIO4 ;
 int min (int,int ) ;

__attribute__((used)) static int
imx_ata_setmode(device_t dev, int target, int mode)
{

 return (min(mode, ATA_PIO4));
}
