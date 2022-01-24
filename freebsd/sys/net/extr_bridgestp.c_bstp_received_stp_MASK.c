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
struct mbuf {int /*<<< orphan*/  m_len; } ;
struct bstp_tcn_unit {int tu_message_type; } ;
struct bstp_tbpdu {int tbu_bpdutype; } ;
struct bstp_state {int dummy; } ;
struct bstp_config_unit {int dummy; } ;
struct bstp_port {struct bstp_config_unit bp_msg_cu; } ;
struct bstp_cbpdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSTP_BPDU_STP_LEN ; 
#define  BSTP_MSGTYPE_CFG 129 
#define  BSTP_MSGTYPE_TCN 128 
 int /*<<< orphan*/  FUNC0 (struct bstp_port*,struct bstp_cbpdu*,struct bstp_config_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*,struct bstp_port*,struct bstp_config_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_state*,struct bstp_port*,struct bstp_tcn_unit*) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bstp_cbpdu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bstp_state *bs, struct bstp_port *bp,
    struct mbuf **mp, struct bstp_tbpdu *tpdu)
{
	struct bstp_cbpdu cpdu;
	struct bstp_config_unit *cu = &bp->bp_msg_cu;
	struct bstp_tcn_unit tu;

	switch (tpdu->tbu_bpdutype) {
	case BSTP_MSGTYPE_TCN:
		tu.tu_message_type = tpdu->tbu_bpdutype;
		FUNC2(bs, bp, &tu);
		break;
	case BSTP_MSGTYPE_CFG:
		if ((*mp)->m_len < BSTP_BPDU_STP_LEN &&
		    (*mp = FUNC3(*mp, BSTP_BPDU_STP_LEN)) == NULL)
			return;
		FUNC4(&cpdu, FUNC5(*mp, caddr_t), BSTP_BPDU_STP_LEN);

		FUNC0(bp, &cpdu, cu);
		FUNC1(bs, bp, cu);
		break;
	}
}