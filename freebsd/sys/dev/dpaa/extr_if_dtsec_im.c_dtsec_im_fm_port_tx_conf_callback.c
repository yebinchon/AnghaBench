
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int t_Handle ;


 int XX_FreeSmart (int *) ;

__attribute__((used)) static void
dtsec_im_fm_port_tx_conf_callback(t_Handle app, uint8_t *data, uint16_t status,
    t_Handle buf_context)
{


 XX_FreeSmart(data);
}
