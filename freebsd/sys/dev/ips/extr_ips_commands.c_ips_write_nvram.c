
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* ips_issue_cmd ) (TYPE_4__*) ;int command_dmatag; int adapter_type; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_8__ {int pagenum; int rw; int id; int command; } ;
typedef TYPE_2__ ips_rw_nvram_cmd ;
struct TYPE_9__ {int operating_system; int driver_low; int driver_high; int adapter_type; } ;
typedef TYPE_3__ ips_nvram_page5 ;
struct TYPE_10__ {int command_dmamap; TYPE_3__* data_buffer; int data_dmamap; int data_dmatag; int id; scalar_t__ command_buffer; int callback; TYPE_1__* sc; } ;
typedef TYPE_4__ ips_command_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IPS_OS_FREEBSD ;
 int IPS_RW_NVRAM_CMD ;
 int IPS_VERSION_MAJOR ;
 int IPS_VERSION_MINOR ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ips_wakeup_callback ;
 int strncpy (int ,int ,int) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void ips_write_nvram(ips_command_t *command){
 ips_softc_t *sc = command->sc;
 ips_rw_nvram_cmd *command_struct;
 ips_nvram_page5 *nvram;


 command->callback = ips_wakeup_callback;
 command_struct = (ips_rw_nvram_cmd *)command->command_buffer;
 command_struct->command = IPS_RW_NVRAM_CMD;
 command_struct->id = command->id;
 command_struct->pagenum = 5;
 command_struct->rw = 1;
 bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
    BUS_DMASYNC_POSTREAD);
 nvram = command->data_buffer;

 sc->adapter_type = nvram->adapter_type;

 strncpy(nvram->driver_high, IPS_VERSION_MAJOR, 4);
 strncpy(nvram->driver_low, IPS_VERSION_MINOR, 4);
 nvram->operating_system = IPS_OS_FREEBSD;
 bus_dmamap_sync(sc->command_dmatag, command->command_dmamap,
   BUS_DMASYNC_PREWRITE);
 sc->ips_issue_cmd(command);
}
