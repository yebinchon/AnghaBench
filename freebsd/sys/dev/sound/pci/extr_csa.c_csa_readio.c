
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int32_t ;
struct TYPE_4__ {int io; } ;
typedef TYPE_1__ csa_res ;


 scalar_t__ BA0_AC97_RESET ;
 int bus_space_read_4 (int ,int ,scalar_t__) ;
 scalar_t__ csa_readcodec (TYPE_1__*,scalar_t__,int*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

u_int32_t
csa_readio(csa_res *resp, u_long offset)
{
 u_int32_t ul;

 if (offset < BA0_AC97_RESET)
  return bus_space_read_4(rman_get_bustag(resp->io), rman_get_bushandle(resp->io), offset) & 0xffffffff;
 else {
  if (csa_readcodec(resp, offset, &ul))
   ul = 0;
  return (ul);
 }
}
