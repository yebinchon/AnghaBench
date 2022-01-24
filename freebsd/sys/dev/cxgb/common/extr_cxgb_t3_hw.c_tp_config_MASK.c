#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tp_params {int dummy; } ;
struct TYPE_8__ {scalar_t__ rev; int nports; } ;
struct TYPE_9__ {TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_DACK_CONFIG ; 
 int /*<<< orphan*/  A_TP_EGRESS_CONFIG ; 
 int /*<<< orphan*/  A_TP_GLOBAL_CONFIG ; 
 int /*<<< orphan*/  A_TP_INGRESS_CONFIG ; 
 int /*<<< orphan*/  A_TP_INTF_FROM_TX_PKT ; 
 int /*<<< orphan*/  A_TP_IN_CONFIG ; 
 int /*<<< orphan*/  A_TP_MAC_MATCH_MAP0 ; 
 int /*<<< orphan*/  A_TP_MAC_MATCH_MAP1 ; 
 int /*<<< orphan*/  A_TP_MOD_CHANNEL_WEIGHT ; 
 int /*<<< orphan*/  A_TP_MOD_RATE_LIMIT ; 
 int /*<<< orphan*/  A_TP_PARA_REG3 ; 
 int /*<<< orphan*/  A_TP_PARA_REG4 ; 
 int /*<<< orphan*/  A_TP_PARA_REG6 ; 
 int /*<<< orphan*/  A_TP_PC_CONFIG ; 
 int /*<<< orphan*/  A_TP_PC_CONFIG2 ; 
 int /*<<< orphan*/  A_TP_PREAMBLE_LSB ; 
 int /*<<< orphan*/  A_TP_PREAMBLE_MSB ; 
 int /*<<< orphan*/  A_TP_PROXY_FLOW_CNTL ; 
 int /*<<< orphan*/  A_TP_QOS_RX_MAP_MODE ; 
 int /*<<< orphan*/  A_TP_TCP_OPTIONS ; 
 int /*<<< orphan*/  A_TP_TX_MOD_QUEUE_WEIGHT0 ; 
 int /*<<< orphan*/  A_TP_TX_MOD_QUEUE_WEIGHT1 ; 
 int /*<<< orphan*/  A_TP_TX_RESOURCE_LIMIT ; 
 int /*<<< orphan*/  A_TP_VLAN_PRI_MAP ; 
 int F_AUTOCAREFUL ; 
 int F_AUTOENABLE ; 
 int F_CHDRAFULL ; 
 int F_DISBLEDAPARBIT0 ; 
 int F_ENABLEARPMISS ; 
 int F_ENABLEEPCMDAFULL ; 
 int F_ENABLEESND ; 
 int F_ENABLEEXTRACT ; 
 int F_ENABLEEXTRACTIONSFD ; 
 int F_ENABLEINSERTION ; 
 int F_ENABLEINSERTIONSFD ; 
 int F_ENABLEIPV6RSS ; 
 int F_ENABLENONOFDTNLSYN ; 
 int F_ENABLEOCSPIFULL ; 
 int F_ENABLERXPORTFROMADDR ; 
 int F_ENABLETXPORTFROMDA ; 
 int F_ENABLETXPORTFROMDA2 ; 
 int F_HEARBEATDACK ; 
 int F_INTFFROMTXPKT ; 
 int F_IPCHECKSUMOFFLOAD ; 
 int F_IPV6ENABLE ; 
 int F_LOCKTID ; 
 int F_MTUENABLE ; 
 int F_NICMODE ; 
 int F_PATHMTU ; 
 int F_REWRITEFORCETOSIZE ; 
 int F_RXCONGESTIONMODE ; 
 int F_RXFBARBPRIO ; 
 int F_T3A_ENABLEESND ; 
 int F_TCPCHECKSUMOFFLOAD ; 
 int F_TXCONGESTIONMODE ; 
 int F_TXDEFERENABLE ; 
 int F_TXFBARBPRIO ; 
 int F_TXPACEAUTO ; 
 int F_TXPACEAUTOSTRICT ; 
 int F_TXPACEFIXED ; 
 int F_TXPACINGENABLE ; 
 int F_UDPCHECKSUMOFFLOAD ; 
 int /*<<< orphan*/  M_RXMAPMODE ; 
 int M_TABLELATENCYDELTA ; 
 scalar_t__ T3_REV_C ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC22(adapter_t *adap, const struct tp_params *p)
{
	FUNC19(adap, A_TP_GLOBAL_CONFIG, F_TXPACINGENABLE | F_PATHMTU |
		     F_IPCHECKSUMOFFLOAD | F_UDPCHECKSUMOFFLOAD |
		     F_TCPCHECKSUMOFFLOAD | FUNC9(64));
	FUNC19(adap, A_TP_TCP_OPTIONS, FUNC11(576) |
		     F_MTUENABLE | FUNC17(1) |
		     FUNC16(1) | FUNC13(1) | FUNC14(1));
	FUNC19(adap, A_TP_DACK_CONFIG, FUNC2(1) |
		     FUNC1(1) | FUNC0(0) |
		     FUNC7(26880) | FUNC10(2) |
		     F_AUTOCAREFUL | F_AUTOENABLE | FUNC8(1));
	FUNC18(adap, A_TP_IN_CONFIG, F_RXFBARBPRIO | F_TXFBARBPRIO,
			 F_IPV6ENABLE | F_NICMODE);
	FUNC19(adap, A_TP_TX_RESOURCE_LIMIT, 0x18141814);
	FUNC19(adap, A_TP_PARA_REG4, 0x5050105);
	FUNC18(adap, A_TP_PARA_REG6, 0,
			 adap->params.rev > 0 ? F_ENABLEESND :
			 			F_T3A_ENABLEESND);
	FUNC18(adap, A_TP_PC_CONFIG,
			 F_ENABLEEPCMDAFULL,
			 F_ENABLEOCSPIFULL |F_TXDEFERENABLE | F_HEARBEATDACK |
			 F_TXCONGESTIONMODE | F_RXCONGESTIONMODE);
	FUNC18(adap, A_TP_PC_CONFIG2, F_CHDRAFULL,
			 F_ENABLEIPV6RSS | F_ENABLENONOFDTNLSYN |
			 F_ENABLEARPMISS | F_DISBLEDAPARBIT0);
	FUNC19(adap, A_TP_PROXY_FLOW_CNTL, 1080);
	FUNC19(adap, A_TP_PROXY_FLOW_CNTL, 1000);

	if (adap->params.rev > 0) {
		FUNC21(adap, A_TP_EGRESS_CONFIG, F_REWRITEFORCETOSIZE);
		FUNC18(adap, A_TP_PARA_REG3, 0,
				 F_TXPACEAUTO | F_TXPACEAUTOSTRICT);
		FUNC18(adap, A_TP_PC_CONFIG, F_LOCKTID, F_LOCKTID);
		FUNC21(adap, A_TP_VLAN_PRI_MAP, 0xfa50);
		FUNC21(adap, A_TP_MAC_MATCH_MAP0, 0xfac688);
		FUNC21(adap, A_TP_MAC_MATCH_MAP1, 0xfac688);
	} else
		FUNC18(adap, A_TP_PARA_REG3, 0, F_TXPACEFIXED);

	if (adap->params.rev == T3_REV_C)
		FUNC18(adap, A_TP_PC_CONFIG,
				 FUNC15(M_TABLELATENCYDELTA),
				 FUNC15(4));

	FUNC19(adap, A_TP_TX_MOD_QUEUE_WEIGHT1, 0);
	FUNC19(adap, A_TP_TX_MOD_QUEUE_WEIGHT0, 0);
	FUNC19(adap, A_TP_MOD_CHANNEL_WEIGHT, 0);
	FUNC19(adap, A_TP_MOD_RATE_LIMIT, 0xf2200000);

	if (adap->params.nports > 2) {
		FUNC18(adap, A_TP_PC_CONFIG2, 0,
				 F_ENABLETXPORTFROMDA2 | F_ENABLETXPORTFROMDA |
				 F_ENABLERXPORTFROMADDR);
		FUNC20(adap, A_TP_QOS_RX_MAP_MODE,
				    FUNC12(M_RXMAPMODE), 0);
		FUNC21(adap, A_TP_INGRESS_CONFIG, FUNC3(48) |
			       FUNC4(49) | FUNC5(50) | FUNC6(51) |
			       F_ENABLEEXTRACT | F_ENABLEEXTRACTIONSFD |
			       F_ENABLEINSERTION | F_ENABLEINSERTIONSFD);
		FUNC21(adap, A_TP_PREAMBLE_MSB, 0xfb000000);
		FUNC21(adap, A_TP_PREAMBLE_LSB, 0xd5);
		FUNC21(adap, A_TP_INTF_FROM_TX_PKT, F_INTFFROMTXPKT);
	}
}