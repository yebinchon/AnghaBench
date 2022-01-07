
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {TYPE_1__* copper_queue; } ;
typedef TYPE_2__ ips_softc_t ;
struct TYPE_5__ {scalar_t__ nextstatus; scalar_t__ base_phys_addr; int * status; } ;


 int COPPER_REG_SQTR ;
 scalar_t__ IPS_MAX_CMD_NUM ;
 int ips_write_4 (TYPE_2__*,int ,scalar_t__) ;

__attribute__((used)) static u_int32_t ips_copperhead_cmd_status(ips_softc_t *sc)
{
 u_int32_t value;
 int statnum = sc->copper_queue->nextstatus++;
 if(sc->copper_queue->nextstatus == IPS_MAX_CMD_NUM)
  sc->copper_queue->nextstatus = 0;
 value = sc->copper_queue->status[statnum];
 ips_write_4(sc, COPPER_REG_SQTR, sc->copper_queue->base_phys_addr +
      4 * statnum);
 return value;
}
