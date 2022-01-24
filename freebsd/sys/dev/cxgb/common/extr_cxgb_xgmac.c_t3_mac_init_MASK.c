#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct cmac {unsigned int offset; int /*<<< orphan*/  stats; scalar_t__ multiport; TYPE_2__* adapter; } ;
struct addr_val_pair {int member_1; scalar_t__ member_0; } ;
struct TYPE_10__ {scalar_t__ rev; } ;
struct TYPE_11__ {TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addr_val_pair*) ; 
 scalar_t__ const A_XGM_RESET_CTRL ; 
 scalar_t__ const A_XGM_RXFIFO_CFG ; 
#define  A_XGM_RX_CFG 147 
#define  A_XGM_RX_CTRL 146 
#define  A_XGM_RX_EXACT_MATCH_LOW_1 145 
#define  A_XGM_RX_EXACT_MATCH_LOW_2 144 
#define  A_XGM_RX_EXACT_MATCH_LOW_3 143 
#define  A_XGM_RX_EXACT_MATCH_LOW_4 142 
#define  A_XGM_RX_EXACT_MATCH_LOW_5 141 
#define  A_XGM_RX_EXACT_MATCH_LOW_6 140 
#define  A_XGM_RX_EXACT_MATCH_LOW_7 139 
#define  A_XGM_RX_EXACT_MATCH_LOW_8 138 
#define  A_XGM_RX_HASH_HIGH 137 
#define  A_XGM_RX_HASH_LOW 136 
 scalar_t__ const A_XGM_RX_MAX_PKT_SIZE ; 
 scalar_t__ const A_XGM_SERDES_CTRL ; 
 scalar_t__ A_XGM_SERDES_STATUS1 ; 
#define  A_XGM_STAT_CTRL 135 
 scalar_t__ const A_XGM_TXFIFO_CFG ; 
#define  A_XGM_TX_CTRL 134 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
#define  F_CLRSTATS 133 
 int /*<<< orphan*/  F_CMULOCK ; 
 int F_COPYPREAMBLE ; 
 int F_DISERRFRAMES ; 
#define  F_DISPAUSEFRAMES 132 
 int F_DISPREAMBLE ; 
#define  F_EN1536BFRAMES 131 
#define  F_ENHASHMCAST 130 
#define  F_ENJUMBO 129 
 int F_ENNON802_3PREAMBLE ; 
 int F_MAC_RESET_ ; 
 int F_PCS_RESET_ ; 
#define  F_RMFCS 128 
 int F_RXEN ; 
 int F_RXENABLE ; 
 int F_RXENFRAMER ; 
 int F_RXSTRFRWRD ; 
 int F_SERDESRESET_ ; 
 int F_TXEN ; 
 int F_TXENABLE ; 
 int F_UNDERUNFIX ; 
 scalar_t__ MAX_FRAME_SIZE ; 
 scalar_t__ M_RXMAXFRAMERSIZE ; 
 int M_TXFIFOTHRESH ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__ const,int,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__ const,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct addr_val_pair*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct cmac*) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct cmac*) ; 
 int FUNC16 (struct cmac*) ; 

int FUNC17(struct cmac *mac)
{
	static struct addr_val_pair mac_reset_avp[] = {
		{ A_XGM_TX_CTRL, 0 },
		{ A_XGM_RX_CTRL, 0 },
		{ A_XGM_RX_CFG, F_DISPAUSEFRAMES | F_EN1536BFRAMES |
		                F_RMFCS | F_ENJUMBO | F_ENHASHMCAST },
		{ A_XGM_RX_HASH_LOW, 0 },
		{ A_XGM_RX_HASH_HIGH, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_1, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_2, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_3, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_4, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_5, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_6, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_7, 0 },
		{ A_XGM_RX_EXACT_MATCH_LOW_8, 0 },
		{ A_XGM_STAT_CTRL, F_CLRSTATS }
	};
	u32 val;
	adapter_t *adap = mac->adapter;
	unsigned int oft = mac->offset;

	FUNC11(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
	(void) FUNC8(adap, A_XGM_RESET_CTRL + oft);    /* flush */

	FUNC12(adap, mac_reset_avp, FUNC0(mac_reset_avp), oft);
	FUNC9(adap, A_XGM_RXFIFO_CFG + oft,
			 F_RXSTRFRWRD | F_DISERRFRAMES,
			 FUNC14(adap) ? 0 : F_RXSTRFRWRD);
	FUNC9(adap, A_XGM_TXFIFO_CFG + oft, 0, F_UNDERUNFIX);

	if (FUNC14(adap)) {
		if (adap->params.rev == 0) {
			FUNC9(adap, A_XGM_SERDES_CTRL + oft, 0,
					 F_RXENABLE | F_TXENABLE);
			if (FUNC10(adap, A_XGM_SERDES_STATUS1 + oft,
					    F_CMULOCK, 1, 5, 2)) {
				FUNC1(adap,
				       "MAC %d XAUI SERDES CMU lock failed\n",
				       FUNC5(mac));
				return -1;
			}
			FUNC9(adap, A_XGM_SERDES_CTRL + oft, 0,
					 F_SERDESRESET_);
		} else
			FUNC15(mac);
	}


	if (mac->multiport) {
		FUNC11(adap, A_XGM_RX_MAX_PKT_SIZE + oft,
			     FUNC3(MAX_FRAME_SIZE - 4));
		FUNC9(adap, A_XGM_TXFIFO_CFG + oft, 0,
				 F_DISPREAMBLE);
		FUNC9(adap, A_XGM_RX_CFG + oft, 0, F_COPYPREAMBLE |
				 F_ENNON802_3PREAMBLE);
		FUNC9(adap, A_XGM_TXFIFO_CFG + oft,
				 FUNC4(M_TXFIFOTHRESH),
				 FUNC4(64));
		FUNC11(adap, A_XGM_TX_CTRL + oft, F_TXEN);
		FUNC11(adap, A_XGM_RX_CTRL + oft, F_RXEN);
	}

	FUNC9(adap, A_XGM_RX_MAX_PKT_SIZE + oft,
			 FUNC2(M_RXMAXFRAMERSIZE),
			 FUNC2(MAX_FRAME_SIZE) | F_RXENFRAMER);

	val = FUNC16(mac);
	FUNC11(adap, A_XGM_RESET_CTRL + oft, val);
	(void) FUNC8(adap, A_XGM_RESET_CTRL + oft);  /* flush */
	if ((val & F_PCS_RESET_) && adap->params.rev) {
		FUNC7(1);
		FUNC13(mac);
	}

	FUNC6(&mac->stats, 0, sizeof(mac->stats));
	return 0;
}