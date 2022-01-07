
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int t_Handle ;
typedef int t_Error ;


 int E_OK ;
 int XX_FreeSmart (int *) ;

__attribute__((used)) static t_Error
dtsec_im_fm_port_rx_put_buf(t_Handle buffer_pool, uint8_t *buffer,
    t_Handle buf_context)
{

 XX_FreeSmart(buffer);
 return (E_OK);
}
