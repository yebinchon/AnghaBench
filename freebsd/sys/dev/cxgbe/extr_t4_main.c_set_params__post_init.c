
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int port_caps32; } ;
struct adapter {TYPE_1__ params; int pf; int mbox; } ;


 scalar_t__ A_TP_KEEP_IDLE ;
 scalar_t__ A_TP_KEEP_INTVL ;
 scalar_t__ A_TP_RSS_CONFIG_TNL ;
 scalar_t__ A_TP_RXT_MAX ;
 scalar_t__ A_TP_RXT_MIN ;
 scalar_t__ A_TP_SHIFT_CNT ;
 scalar_t__ A_TP_TCP_BACKOFF_REG0 ;
 int CPLFW4MSG_ENCAP ;
 int FW_PARAM_PFVF (int ) ;
 int G_MASKSIZE (int ) ;
 int M_KEEPALIVEIDLE ;
 int M_KEEPALIVEINTVL ;
 int M_KEEPALIVEMAXR1 ;
 int M_KEEPALIVEMAXR2 ;
 int M_MASKFILTER ;
 int M_RXTMAX ;
 int M_RXTMIN ;
 int M_RXTSHIFTMAXR1 ;
 int M_RXTSHIFTMAXR2 ;
 int M_TIMERBACKOFFINDEX0 ;
 int PORT_CAPS32 ;
 int V_KEEPALIVEIDLE (int) ;
 int V_KEEPALIVEINTVL (int) ;
 int V_KEEPALIVEMAXR1 (int) ;
 int V_KEEPALIVEMAXR2 (int) ;
 int V_MASKFILTER (int) ;
 int V_RXTMAX (int) ;
 int V_RXTMIN (int) ;
 int V_RXTSHIFTMAXR1 (int) ;
 int V_RXTSHIFTMAXR2 (int) ;
 int nitems (int*) ;
 int t4_read_reg (struct adapter*,scalar_t__) ;
 scalar_t__ t4_set_params (struct adapter*,int ,int ,int ,int,int*,int*) ;
 int t4_set_reg_field (struct adapter*,scalar_t__,int,int) ;
 int t4_toe_keepalive_count ;
 scalar_t__ t4_toe_keepalive_idle ;
 scalar_t__ t4_toe_keepalive_interval ;
 int* t4_toe_rexmt_backoff ;
 int t4_toe_rexmt_count ;
 scalar_t__ t4_toe_rexmt_max ;
 scalar_t__ t4_toe_rexmt_min ;
 int us_to_tcp_ticks (struct adapter*,scalar_t__) ;

__attribute__((used)) static int
set_params__post_init(struct adapter *sc)
{
 uint32_t param, val;





 param = FW_PARAM_PFVF(CPLFW4MSG_ENCAP);
 val = 1;
 (void)t4_set_params(sc, sc->mbox, sc->pf, 0, 1, &param, &val);


 param = FW_PARAM_PFVF(PORT_CAPS32);
 val = 1;
 if (t4_set_params(sc, sc->mbox, sc->pf, 0, 1, &param, &val) == 0)
  sc->params.port_caps32 = 1;


 val = 1 << (G_MASKSIZE(t4_read_reg(sc, A_TP_RSS_CONFIG_TNL)) - 1);
 t4_set_reg_field(sc, A_TP_RSS_CONFIG_TNL, V_MASKFILTER(M_MASKFILTER),
     V_MASKFILTER(val - 1));
 return (0);
}
