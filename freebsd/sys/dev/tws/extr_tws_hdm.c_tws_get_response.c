
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int16_t ;
struct tws_softc {int dummy; } ;
struct tws_outbound_response {int request_id; int not_mfa; } ;
typedef int boolean ;


 int TWS_FIFO_EMPTY32 ;
 int TWS_I2O0_HOBQPH ;
 int TWS_I2O0_HOBQPL ;
 int TWS_INVALID_REQID ;
 int tws_read_reg (struct tws_softc*,int ,int) ;

boolean
tws_get_response(struct tws_softc *sc, u_int16_t *req_id, u_int64_t *mfa)
{
    u_int64_t out_mfa=0, val=0;
    struct tws_outbound_response out_res;

    *req_id = TWS_INVALID_REQID;
    out_mfa = (u_int64_t)tws_read_reg(sc, TWS_I2O0_HOBQPH, 4);

    if ( out_mfa == TWS_FIFO_EMPTY32 ) {
        return(0);

    }
    out_mfa = out_mfa << 32;
    val = tws_read_reg(sc, TWS_I2O0_HOBQPL, 4);
    out_mfa = out_mfa | val;

    out_res = *(struct tws_outbound_response *)&out_mfa;

    if ( !out_res.not_mfa ) {
        *mfa = out_mfa;
        return(1);
    } else {
        *req_id = out_res.request_id;
    }

    return(1);
}
