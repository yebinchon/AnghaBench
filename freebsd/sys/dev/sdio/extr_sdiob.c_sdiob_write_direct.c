
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int device_t ;


 int sdio_rw_direct (int ,int ,int ,int,int *) ;

__attribute__((used)) static int
sdiob_write_direct(device_t dev, uint8_t fn, uint32_t addr, uint8_t val)
{

 return (sdio_rw_direct(dev, fn, addr, 1, &val));
}
