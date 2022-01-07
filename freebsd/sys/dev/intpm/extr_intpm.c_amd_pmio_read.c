
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct resource {int dummy; } ;


 int bus_read_1 (struct resource*,int) ;
 int bus_write_1 (struct resource*,int ,int ) ;

__attribute__((used)) static uint8_t
amd_pmio_read(struct resource *res, uint8_t reg)
{
 bus_write_1(res, 0, reg);
 return (bus_read_1(res, 1));
}
