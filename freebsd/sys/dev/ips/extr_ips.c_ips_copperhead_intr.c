
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int queue_mtx; TYPE_5__* commandarray; } ;
typedef TYPE_3__ ips_softc_t ;
struct TYPE_8__ {int command_id; } ;
struct TYPE_11__ {int value; TYPE_1__ fields; } ;
typedef TYPE_4__ ips_cmd_status_t ;
struct TYPE_9__ {int value; } ;
struct TYPE_12__ {int (* callback ) (TYPE_5__*) ;scalar_t__ timeout; TYPE_2__ status; } ;


 int COPPER_REG_HISR ;
 int COPPER_SCE_BIT ;
 int PRINTF (int,char*,int) ;
 int ips_copperhead_cmd_status (TYPE_3__*) ;
 int ips_read_1 (TYPE_3__*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (TYPE_5__*) ;

void ips_copperhead_intr(void *void_sc)
{
        ips_softc_t *sc = (ips_softc_t *)void_sc;
 int cmdnumber;
 ips_cmd_status_t status;

 mtx_lock(&sc->queue_mtx);
 while(ips_read_1(sc, COPPER_REG_HISR) & COPPER_SCE_BIT){
  status.value = ips_copperhead_cmd_status(sc);
  cmdnumber = status.fields.command_id;
  sc->commandarray[cmdnumber].status.value = status.value;
  sc->commandarray[cmdnumber].timeout = 0;
  sc->commandarray[cmdnumber].callback(&(sc->commandarray[cmdnumber]));
  PRINTF(9, "ips: got command %d\n", cmdnumber);
 }
 mtx_unlock(&sc->queue_mtx);
        return;
}
