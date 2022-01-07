
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32_t ;
struct TYPE_3__ {int mem; } ;
typedef TYPE_1__ csa_res ;


 int bus_space_write_4 (int ,int ,int ,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

void
csa_writemem(csa_res *resp, u_long offset, u_int32_t data)
{
 bus_space_write_4(rman_get_bustag(resp->mem), rman_get_bushandle(resp->mem), offset, data);
}
