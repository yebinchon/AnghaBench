
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int device_t ;


 int sdiob_rw_extended (int ,int ,int ,int,int ,int *,int) ;

__attribute__((used)) static int
sdiob_read_extended(device_t dev, uint8_t fn, uint32_t addr, uint32_t size,
    uint8_t *buffer, bool incaddr)
{

 return (sdiob_rw_extended(dev, fn, addr, 0, size, buffer, incaddr));
}
