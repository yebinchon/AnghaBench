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
struct secpolicy {int /*<<< orphan*/  state; int /*<<< orphan*/  id; TYPE_1__ spidx; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t IPSEC_DIR_INBOUND ; 
 size_t IPSEC_DIR_OUTBOUND ; 
 int /*<<< orphan*/  IPSEC_SPSTATE_IFNET ; 
 int /*<<< orphan*/  KEY_SENDUP_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct secpolicy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SADB_X_SPDADD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct secpolicy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * V_sptree_ifnet ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  idhash ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC8 (struct secpolicy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct secpolicy **spp, u_int count)
{
	struct mbuf *m;
	u_int i;

	FUNC3();
	/*
	 * First of try to acquire id for each SP.
	 */
	for (i = 0; i < count; i++) {
		FUNC0(spp[i]->spidx.dir == IPSEC_DIR_INBOUND ||
		    spp[i]->spidx.dir == IPSEC_DIR_OUTBOUND,
		    ("invalid direction %u", spp[i]->spidx.dir));

		if ((spp[i]->id = FUNC6()) == 0) {
			FUNC4();
			return (EAGAIN);
		}
	}
	for (i = 0; i < count; i++) {
		FUNC5(&V_sptree_ifnet[spp[i]->spidx.dir],
		    spp[i], chain);
		/*
		 * NOTE: despite the fact that we keep VTI SP in the
		 * separate list, SPHASH contains policies from both
		 * sources. Thus SADB_X_SPDGET will correctly return
		 * SP by id, because it uses SPHASH for lookups.
		 */
		FUNC1(FUNC2(spp[i]->id), spp[i], idhash);
		spp[i]->state = IPSEC_SPSTATE_IFNET;
	}
	FUNC4();
	/*
	 * Notify user processes about new SP.
	 */
	for (i = 0; i < count; i++) {
		m = FUNC8(spp[i], SADB_X_SPDADD, 0, 0);
		if (m != NULL)
			FUNC7(NULL, m, KEY_SENDUP_ALL);
	}
	return (0);
}