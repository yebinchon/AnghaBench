
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int* mac_addr; } ;
typedef TYPE_1__ mxge_softc_t ;
struct TYPE_7__ {int data0; int data1; } ;
typedef TYPE_2__ mxge_cmd_t ;


 int MXGEFW_SET_MAC_ADDRESS ;
 int mxge_send_cmd (TYPE_1__*,int ,TYPE_2__*) ;

__attribute__((used)) static int
mxge_update_mac_address(mxge_softc_t *sc)
{
 mxge_cmd_t cmd;
 uint8_t *addr = sc->mac_addr;
 int status;


 cmd.data0 = ((addr[0] << 24) | (addr[1] << 16)
       | (addr[2] << 8) | addr[3]);

 cmd.data1 = ((addr[4] << 8) | (addr[5]));

 status = mxge_send_cmd(sc, MXGEFW_SET_MAC_ADDRESS, &cmd);
 return status;
}
