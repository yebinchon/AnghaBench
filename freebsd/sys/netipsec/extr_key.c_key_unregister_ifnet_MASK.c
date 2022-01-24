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
typedef  size_t u_int ;
struct TYPE_2__ {size_t dir; } ;
struct secpolicy {scalar_t__ state; TYPE_1__ spidx; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t IPSEC_DIR_INBOUND ; 
 size_t IPSEC_DIR_OUTBOUND ; 
 scalar_t__ IPSEC_SPSTATE_DEAD ; 
 scalar_t__ IPSEC_SPSTATE_IFNET ; 
 int /*<<< orphan*/  KEY_SENDUP_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct secpolicy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SADB_X_SPDDELETE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct secpolicy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_spd_size ; 
 int /*<<< orphan*/ * V_sptree_ifnet ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  idhash ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC7 (struct secpolicy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(struct secpolicy **spp, u_int count)
{
	struct mbuf *m;
	u_int i;

	FUNC3();
	for (i = 0; i < count; i++) {
		FUNC0(spp[i]->spidx.dir == IPSEC_DIR_INBOUND ||
		    spp[i]->spidx.dir == IPSEC_DIR_OUTBOUND,
		    ("invalid direction %u", spp[i]->spidx.dir));

		if (spp[i]->state != IPSEC_SPSTATE_IFNET)
			continue;
		spp[i]->state = IPSEC_SPSTATE_DEAD;
		FUNC5(&V_sptree_ifnet[spp[i]->spidx.dir],
		    spp[i], chain);
		V_spd_size--;
		FUNC1(spp[i], idhash);
	}
	FUNC4();
	if (FUNC2())
		FUNC8();

	for (i = 0; i < count; i++) {
		m = FUNC7(spp[i], SADB_X_SPDDELETE, 0, 0);
		if (m != NULL)
			FUNC6(NULL, m, KEY_SENDUP_ALL);
	}
}