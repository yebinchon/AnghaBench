
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int* rf_read_delay; int rs_set_rom_opts; int rs_tx_setup_macid; int rs_tx_setup_hwseq; int rs_tx_enable_ampdu; int rs_set_gain; int rs_get_txpower; int rs_set_bw20; int * rs_txpwr; } ;


 int M_RTWN_PRIV ;
 int M_WAITOK ;
 int M_ZERO ;
 struct r92c_softc* malloc (int,int ,int) ;
 int r88e_get_txpower ;
 int r88e_set_bw20 ;
 int r88e_set_gain ;
 int r88e_tx_enable_ampdu ;
 int r88e_tx_setup_hwseq ;
 int r88e_tx_setup_macid ;
 int r88ee_set_macaddr ;
 int r88ee_txpwr ;

__attribute__((used)) static void
r88ee_attach_private(struct rtwn_softc *sc)
{
 struct r92c_softc *rs;

 rs = malloc(sizeof(struct r92c_softc), M_RTWN_PRIV, M_WAITOK | M_ZERO);

 rs->rs_txpwr = &r88ee_txpwr;

 rs->rs_set_bw20 = r88e_set_bw20;
 rs->rs_get_txpower = r88e_get_txpower;
 rs->rs_set_gain = r88e_set_gain;
 rs->rs_tx_enable_ampdu = r88e_tx_enable_ampdu;
 rs->rs_tx_setup_hwseq = r88e_tx_setup_hwseq;
 rs->rs_tx_setup_macid = r88e_tx_setup_macid;
 rs->rs_set_rom_opts = r88ee_set_macaddr;

 rs->rf_read_delay[0] = 1000;
 rs->rf_read_delay[1] = 1000;
 rs->rf_read_delay[2] = 1000;

 sc->sc_priv = rs;

}
