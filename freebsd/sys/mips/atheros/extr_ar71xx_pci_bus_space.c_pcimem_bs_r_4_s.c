
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int le32toh (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static uint32_t
pcimem_bs_r_4_s(void *t, bus_space_handle_t h, bus_size_t o)
{

 return le32toh(readl(h + o));
}
