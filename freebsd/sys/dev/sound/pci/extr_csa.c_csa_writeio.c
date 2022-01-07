
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
 int bus_space_write_4 (int ,int ,scalar_t__,int ) ;
 int csa_writecodec (TYPE_1__*,scalar_t__,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

void
csa_writeio(csa_res *resp, u_long offset, u_int32_t data)
{
 if (offset < BA0_AC97_RESET)
  bus_space_write_4(rman_get_bustag(resp->io), rman_get_bushandle(resp->io), offset, data);
 else
  csa_writecodec(resp, offset, data);
}
