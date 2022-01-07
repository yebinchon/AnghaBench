
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int SNOOP1 ;
 int SNOOP2 ;
 int SNOOP_RANGE_2GB ;
 int bus_space_write_4 (int ,int ,int ,int) ;

__attribute__((used)) static void
set_snooping(bus_space_tag_t iot, bus_space_handle_t ioh)
{

 bus_space_write_4(iot, ioh, SNOOP1, SNOOP_RANGE_2GB);
 bus_space_write_4(iot, ioh, SNOOP2, 0x80000000 | SNOOP_RANGE_2GB);
}
