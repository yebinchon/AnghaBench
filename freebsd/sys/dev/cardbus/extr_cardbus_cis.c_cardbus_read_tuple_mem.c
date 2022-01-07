
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int bus_read_1 (struct resource*,scalar_t__) ;
 int bus_read_region_1 (struct resource*,scalar_t__,int *,int) ;

__attribute__((used)) static int
cardbus_read_tuple_mem(device_t cbdev, struct resource *res, uint32_t start,
    uint32_t *off, int *tupleid, int *len, uint8_t *tupledata)
{
 int ret;

 *tupleid = bus_read_1(res, start + *off);
 *len = bus_read_1(res, start + *off + 1);
 bus_read_region_1(res, *off + start + 2, tupledata, *len);
 ret = 0;
 *off += *len + 2;
 return (ret);
}
