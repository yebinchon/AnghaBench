
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint32_t ;
struct siba_devinfo {struct bhnd_resource** cfg_res; } ;
struct bhnd_resource {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int DELAY (int) ;
 int KASSERT (int,char*) ;
 int SIBA_CFG_SIZE ;
 int bhnd_bus_read_4 (struct bhnd_resource*,int) ;
 int bhnd_bus_write_4 (struct bhnd_resource*,int,int) ;
 int device_get_nameunit (int ) ;

void
siba_write_target_state(device_t dev, struct siba_devinfo *dinfo,
    bus_size_t reg, uint32_t value, uint32_t mask)
{
 struct bhnd_resource *r;
 uint32_t rval;

 r = dinfo->cfg_res[0];

 KASSERT(r != ((void*)0), ("%s missing CFG0 mapping",
     device_get_nameunit(dev)));
 KASSERT(reg <= SIBA_CFG_SIZE-4, ("%s invalid CFG0 register offset %#jx",
     device_get_nameunit(dev), (uintmax_t)reg));

 rval = bhnd_bus_read_4(r, reg);
 rval &= ~mask;
 rval |= (value & mask);

 bhnd_bus_write_4(r, reg, rval);
 bhnd_bus_read_4(r, reg);
 DELAY(1);
}
