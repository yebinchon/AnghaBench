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
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ipqbucket {int /*<<< orphan*/  count; int /*<<< orphan*/  head; } ;
struct ipq {struct mbuf* ipq_frags; int /*<<< orphan*/  ipq_nfrags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ipq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ipq_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipq_list ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  nfrags ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ipq*) ; 

__attribute__((used)) static void
FUNC4(struct ipqbucket *bucket, struct ipq *fp)
{
	struct mbuf *q;

	FUNC1(&nfrags, fp->ipq_nfrags);
	while (fp->ipq_frags) {
		q = fp->ipq_frags;
		fp->ipq_frags = q->m_nextpkt;
		FUNC2(q);
	}
	FUNC0(&bucket->head, fp, ipq_list);
	bucket->count--;
	FUNC3(V_ipq_zone, fp);
}