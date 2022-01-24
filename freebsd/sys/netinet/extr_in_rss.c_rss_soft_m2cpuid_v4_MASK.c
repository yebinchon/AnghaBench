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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETISR_CPUID_NONE ; 
 int /*<<< orphan*/  RSS_HASH_PKT_INGRESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct mbuf *
FUNC5(struct mbuf *m, uintptr_t source, u_int *cpuid)
{
	uint32_t hash_val, hash_type;
	int ret;

	FUNC0(m);

	ret = FUNC4(m, RSS_HASH_PKT_INGRESS,
	    &hash_val, &hash_type);
	if (ret > 0) {
		/* mbuf has a valid hash already; don't need to modify it */
		*cpuid = FUNC3(m->m_pkthdr.flowid, FUNC1(m));
	} else if (ret == 0) {
		/* hash was done; update */
		m->m_pkthdr.flowid = hash_val;
		FUNC2(m, hash_type);
		*cpuid = FUNC3(m->m_pkthdr.flowid, FUNC1(m));
	} else { /* ret < 0 */
		/* no hash was done */
		*cpuid = NETISR_CPUID_NONE;
	}
	return (m);
}