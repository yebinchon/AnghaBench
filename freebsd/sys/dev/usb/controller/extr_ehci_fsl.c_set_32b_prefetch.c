
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int FETCH_32 ;
 int SI_CTRL ;
 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static void
set_32b_prefetch(bus_space_tag_t iot, bus_space_handle_t ioh)
{

 bus_space_write_4(iot, ioh, SI_CTRL, FETCH_32);
}
