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
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ipq {struct mbuf* ipq_frags; int /*<<< orphan*/  ipq_nfrags; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IPREASS_NHASH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipq* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ipq*,int /*<<< orphan*/ ) ; 
 TYPE_1__* V_ipq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipq_list ; 
 int /*<<< orphan*/  ipqhead ; 
 int /*<<< orphan*/  ips_fragtimeout ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  nfrags ; 

__attribute__((used)) static struct ipq *
FUNC8(int start)
{
	struct ipq *fp;
	int bucket, i;

	FUNC0(start);

	for (i = 0; i < IPREASS_NHASH; i++) {
		bucket = (start + i) % IPREASS_NHASH;
		if (bucket != start && FUNC1(bucket) == 0)
			continue;
		fp = FUNC4(&V_ipq[bucket].head, ipqhead);
		if (fp) {
			struct mbuf *m;

			FUNC3(ips_fragtimeout, fp->ipq_nfrags);
			FUNC6(&nfrags, fp->ipq_nfrags);
			while (fp->ipq_frags) {
				m = fp->ipq_frags;
				fp->ipq_frags = m->m_nextpkt;
				FUNC7(m);
			}
			FUNC5(&V_ipq[bucket].head, fp, ipq_list);
			V_ipq[bucket].count--;
			if (bucket != start)
				FUNC2(bucket);
			break;
		}
		if (bucket != start)
			FUNC2(bucket);
	}
	FUNC0(start);
	return (fp);
}