#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct amd_ntb_softc {unsigned long long db_valid_mask; int conn_type; int spad_count; int self_spad; int peer_spad; int /*<<< orphan*/  int_mask; int /*<<< orphan*/  hb_timer; int /*<<< orphan*/  db_mask_lock; TYPE_1__* hw_info; } ;
struct TYPE_2__ {unsigned long long db_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_EVENT_INTMASK ; 
 int /*<<< orphan*/  AMD_INTMASK_OFFSET ; 
 int /*<<< orphan*/  AMD_LINK_HB_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  MTX_SPIN ; 
#define  NTB_CONN_PRI 129 
#define  NTB_CONN_SEC 128 
 int /*<<< orphan*/  amd_link_hb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct amd_ntb_softc *ntb)
{
	ntb->db_valid_mask	 = (1ull << ntb->hw_info->db_count) - 1;
	FUNC4(&ntb->db_mask_lock, "amd ntb db bits", NULL, MTX_SPIN);

	switch (ntb->conn_type) {
	case NTB_CONN_PRI:
	case NTB_CONN_SEC:
		ntb->spad_count >>= 1;

		if (ntb->conn_type == NTB_CONN_PRI) {
			ntb->self_spad = 0;
			ntb->peer_spad = 0x20;
		} else {
			ntb->self_spad = 0x20;
			ntb->peer_spad = 0;
		}

		FUNC2(&ntb->hb_timer, 1);
		FUNC3(&ntb->hb_timer, AMD_LINK_HB_TIMEOUT,
		    amd_link_hb, ntb);

		break;

	default:
		FUNC0(0, "Unsupported AMD NTB topology %d\n",
		    ntb->conn_type);
		return (EINVAL);
	}

	ntb->int_mask = AMD_EVENT_INTMASK;
	FUNC1(4, AMD_INTMASK_OFFSET, ntb->int_mask);

	return (0);
}