
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ata_dmafini (int ) ;

__attribute__((used)) static int
ata_promise_mio_ch_detach(device_t dev)
{

    ata_dmafini(dev);
    return (0);
}
