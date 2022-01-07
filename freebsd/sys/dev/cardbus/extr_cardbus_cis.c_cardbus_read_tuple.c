
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 struct resource* CIS_CONFIG_SPACE ;
 int cardbus_read_tuple_conf (int ,int ,int ,int *,int*,int*,int *) ;
 int cardbus_read_tuple_mem (int ,struct resource*,int ,int *,int*,int*,int *) ;

__attribute__((used)) static int
cardbus_read_tuple(device_t cbdev, device_t child, struct resource *res,
    uint32_t start, uint32_t *off, int *tupleid, int *len,
    uint8_t *tupledata)
{
 if (res == CIS_CONFIG_SPACE)
  return (cardbus_read_tuple_conf(cbdev, child, start, off,
      tupleid, len, tupledata));
 return (cardbus_read_tuple_mem(cbdev, res, start, off, tupleid, len,
     tupledata));
}
