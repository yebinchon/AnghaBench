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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct scc_bas {int dummy; } ;
struct scc_softc {int /*<<< orphan*/  sc_hwmtx; struct scc_chan* sc_chan; struct scc_bas sc_bas; } ;
struct scc_chan {int ch_ipend; int ch_hwsig; } ;

/* Variables and functions */
 int BES_BRK ; 
 int BES_CTS ; 
 int BES_DCD ; 
 int BES_SYNC ; 
 int /*<<< orphan*/  CHAN_A ; 
 int /*<<< orphan*/  CHAN_B ; 
 int /*<<< orphan*/  CR_RSTXSI ; 
 int IP_RIA ; 
 int IP_RIB ; 
 int IP_SIA ; 
 int IP_SIB ; 
 int IP_TIA ; 
 int IP_TIB ; 
 int /*<<< orphan*/  RR_IP ; 
 int /*<<< orphan*/  RR_SRC ; 
 int /*<<< orphan*/  SER_CTS ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DCTS ; 
 int /*<<< orphan*/  SER_DDCD ; 
 int /*<<< orphan*/  SER_DDSR ; 
 int /*<<< orphan*/  SER_DSR ; 
 int SER_INT_BREAK ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_SIGCHG ; 
 int SER_INT_TXIDLE ; 
 int SER_MASK_DELTA ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SRC_OVR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct scc_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct scc_softc *sc)
{
	struct scc_bas *bas;
	struct scc_chan *ch[2];
	uint32_t sig;
	uint8_t bes, ip, src;

	bas = &sc->sc_bas;
	ch[0] = &sc->sc_chan[0];
	ch[1] = &sc->sc_chan[1];
	ch[0]->ch_ipend = 0;
	ch[1]->ch_ipend = 0;

	FUNC1(&sc->sc_hwmtx);
	ip = FUNC3(bas, CHAN_A, RR_IP);
	if (ip & IP_RIA)
		ch[0]->ch_ipend |= SER_INT_RXREADY;
	if (ip & IP_RIB)
		ch[1]->ch_ipend |= SER_INT_RXREADY;
	if (ip & IP_TIA)
		ch[0]->ch_ipend |= SER_INT_TXIDLE;
	if (ip & IP_TIB)
		ch[1]->ch_ipend |= SER_INT_TXIDLE;
	if (ip & IP_SIA) {
		bes = FUNC3(bas, CHAN_A, CR_RSTXSI);
		if (bes & BES_BRK)
			ch[0]->ch_ipend |= SER_INT_BREAK;
		sig = ch[0]->ch_hwsig;
		FUNC0(bes & BES_CTS, sig, SER_CTS, SER_DCTS);
		FUNC0(bes & BES_DCD, sig, SER_DCD, SER_DDCD);
		FUNC0(bes & BES_SYNC, sig, SER_DSR, SER_DDSR);
		if (sig & SER_MASK_DELTA) {
			ch[0]->ch_hwsig = sig;
			ch[0]->ch_ipend |= SER_INT_SIGCHG;
		}
		src = FUNC3(bas, CHAN_A, RR_SRC);
		if (src & SRC_OVR)
			ch[0]->ch_ipend |= SER_INT_OVERRUN;
	}
	if (ip & IP_SIB) {
		bes = FUNC3(bas, CHAN_B, CR_RSTXSI);
		if (bes & BES_BRK)
			ch[1]->ch_ipend |= SER_INT_BREAK;
		sig = ch[1]->ch_hwsig;
		FUNC0(bes & BES_CTS, sig, SER_CTS, SER_DCTS);
		FUNC0(bes & BES_DCD, sig, SER_DCD, SER_DDCD);
		FUNC0(bes & BES_SYNC, sig, SER_DSR, SER_DDSR);
		if (sig & SER_MASK_DELTA) {
			ch[1]->ch_hwsig = sig;
			ch[1]->ch_ipend |= SER_INT_SIGCHG;
		}
		src = FUNC3(bas, CHAN_B, RR_SRC);
		if (src & SRC_OVR)
			ch[1]->ch_ipend |= SER_INT_OVERRUN;
	}
	FUNC2(&sc->sc_hwmtx);

	return (ch[0]->ch_ipend | ch[1]->ch_ipend);
}