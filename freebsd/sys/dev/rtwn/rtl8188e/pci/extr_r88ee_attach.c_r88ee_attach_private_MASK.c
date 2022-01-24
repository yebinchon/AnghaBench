#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int* rf_read_delay; int /*<<< orphan*/  rs_set_rom_opts; int /*<<< orphan*/  rs_tx_setup_macid; int /*<<< orphan*/  rs_tx_setup_hwseq; int /*<<< orphan*/  rs_tx_enable_ampdu; int /*<<< orphan*/  rs_set_gain; int /*<<< orphan*/  rs_get_txpower; int /*<<< orphan*/  rs_set_bw20; int /*<<< orphan*/ * rs_txpwr; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_RTWN_PRIV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct r92c_softc* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  r88e_get_txpower ; 
 int /*<<< orphan*/  r88e_set_bw20 ; 
 int /*<<< orphan*/  r88e_set_gain ; 
 int /*<<< orphan*/  r88e_tx_enable_ampdu ; 
 int /*<<< orphan*/  r88e_tx_setup_hwseq ; 
 int /*<<< orphan*/  r88e_tx_setup_macid ; 
 int /*<<< orphan*/  r88ee_set_macaddr ; 
 int /*<<< orphan*/  r88ee_txpwr ; 

__attribute__((used)) static void
FUNC1(struct rtwn_softc *sc)
{
	struct r92c_softc *rs;

	rs = FUNC0(sizeof(struct r92c_softc), M_RTWN_PRIV, M_WAITOK | M_ZERO);

	rs->rs_txpwr			= &r88ee_txpwr;

	rs->rs_set_bw20			= r88e_set_bw20;
	rs->rs_get_txpower		= r88e_get_txpower;
	rs->rs_set_gain			= r88e_set_gain;
	rs->rs_tx_enable_ampdu		= r88e_tx_enable_ampdu;
	rs->rs_tx_setup_hwseq		= r88e_tx_setup_hwseq;
	rs->rs_tx_setup_macid		= r88e_tx_setup_macid;
	rs->rs_set_rom_opts		= r88ee_set_macaddr;

	rs->rf_read_delay[0]		= 1000;
	rs->rf_read_delay[1]		= 1000;
	rs->rf_read_delay[2]		= 1000;

	sc->sc_priv = rs;

}