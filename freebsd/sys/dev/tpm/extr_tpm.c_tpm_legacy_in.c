
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_write_1 (int ,int ,int ,int) ;

__attribute__((used)) static inline u_int8_t
tpm_legacy_in(bus_space_tag_t iot, bus_space_handle_t ioh, int reg)
{
 bus_space_write_1(iot, ioh, 0, reg);
 return bus_space_read_1(iot, ioh, 1);
}
