
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct resource {int dummy; } ;


 int sio_read (struct resource*,scalar_t__) ;

__attribute__((used)) static uint16_t
sio_readw(struct resource* res, uint8_t reg)
{
 uint16_t v;

 v = sio_read(res, reg);
 v <<= 8;
 v |= sio_read(res, reg + 1);
 return (v);
}
