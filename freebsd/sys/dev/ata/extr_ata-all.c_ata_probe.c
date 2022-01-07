
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_LOW_PRIORITY ;

int
ata_probe(device_t dev)
{
    return (BUS_PROBE_LOW_PRIORITY);
}
