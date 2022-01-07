
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r92c_softc* sc_priv; int sc_mtx; } ;
struct r92c_softc {int* rf_read_delay; int rs_c2h_report; int rs_c2h_timeout; int rs_set_rom_opts; int rs_tx_setup_macid; int rs_tx_setup_hwseq; int rs_tx_enable_ampdu; int rs_set_gain; int rs_get_txpower; int rs_set_bw20; int * rs_txpwr; } ;


 int M_RTWN_PRIV ;
 int M_WAITOK ;
 int M_ZERO ;
 int callout_init_mtx (int *,int *,int ) ;
 int hz ;
 struct r92c_softc* malloc (int,int ,int) ;
 int r92c_get_txpower ;
 int r92c_set_bw20 ;
 int r92c_set_gain ;
 int r92c_tx_enable_ampdu ;
 int r92c_tx_setup_hwseq ;
 int r92c_tx_setup_macid ;
 int r92c_txpwr ;
 int r92cu_set_name ;

__attribute__((used)) static void
r92cu_attach_private(struct rtwn_softc *sc)
{
 struct r92c_softc *rs;

 rs = malloc(sizeof(struct r92c_softc), M_RTWN_PRIV, M_WAITOK | M_ZERO);

 rs->rs_txpwr = &r92c_txpwr;

 rs->rs_set_bw20 = r92c_set_bw20;
 rs->rs_get_txpower = r92c_get_txpower;
 rs->rs_set_gain = r92c_set_gain;
 rs->rs_tx_enable_ampdu = r92c_tx_enable_ampdu;
 rs->rs_tx_setup_hwseq = r92c_tx_setup_hwseq;
 rs->rs_tx_setup_macid = r92c_tx_setup_macid;
 rs->rs_set_rom_opts = r92cu_set_name;


 rs->rs_c2h_timeout = hz;

 callout_init_mtx(&rs->rs_c2h_report, &sc->sc_mtx, 0);


 rs->rf_read_delay[0] = 10;
 rs->rf_read_delay[1] = 100;
 rs->rf_read_delay[2] = 10;

 sc->sc_priv = rs;
}
