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
struct nmreq {int nr_tx_rings; int nr_rx_rings; int nr_tx_slots; int nr_rx_slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int NM_OPEN_RING_CFG ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 

int
FUNC5(const char* conf, struct nmreq *nmr)
{
	char *w, *tok;
	int i, v;

	if (conf == NULL || ! *conf)
		return 0;
	nmr->nr_tx_rings = nmr->nr_rx_rings = 0;
	nmr->nr_tx_slots = nmr->nr_rx_slots = 0;
	w = FUNC3(conf);
	for (i = 0, tok = FUNC4(w, ","); tok; i++, tok = FUNC4(NULL, ",")) {
		v = FUNC1(tok);
		switch (i) {
		case 0:
			nmr->nr_tx_slots = nmr->nr_rx_slots = v;
			break;
		case 1:
			nmr->nr_rx_slots = v;
			break;
		case 2:
			nmr->nr_tx_rings = nmr->nr_rx_rings = v;
			break;
		case 3:
			nmr->nr_rx_rings = v;
			break;
		default:
			FUNC0("ignored config: %s", tok);
			break;
		}
	}
	FUNC0("txr %d txd %d rxr %d rxd %d",
			nmr->nr_tx_rings, nmr->nr_tx_slots,
			nmr->nr_rx_rings, nmr->nr_rx_slots);
	FUNC2(w);
	return (nmr->nr_tx_rings || nmr->nr_tx_slots ||
		nmr->nr_rx_rings || nmr->nr_rx_slots) ?
		NM_OPEN_RING_CFG : 0;
}