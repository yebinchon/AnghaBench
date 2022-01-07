
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint32_t ;
struct i40e_osdep {scalar_t__ mem_bus_space_size; int mem_bus_space_handle; int mem_bus_space_tag; } ;


 int KASSERT (int,char*) ;
 int bus_space_write_4 (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline void
wr32_osdep(struct i40e_osdep *osdep, uint32_t reg, uint32_t value)
{

 KASSERT(reg < osdep->mem_bus_space_size,
     ("ixl: register offset %#jx too large (max is %#jx)",
     (uintmax_t)reg, (uintmax_t)osdep->mem_bus_space_size));

 bus_space_write_4(osdep->mem_bus_space_tag,
     osdep->mem_bus_space_handle, reg, value);
}
