
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int device_t ;


 int device_printf (int ,char*,int *) ;

void
ata_print_cable(device_t dev, u_int8_t *who)
{
    device_printf(dev,
                  "DMA limited to UDMA33, %s found non-ATA66 cable\n", who);
}
