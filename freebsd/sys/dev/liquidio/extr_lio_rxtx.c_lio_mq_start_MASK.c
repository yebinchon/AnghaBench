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
typedef  int uint32_t ;
struct octeon_device {int num_iqs; struct lio_instr_queue** instr_queue; } ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct lio_instr_queue {int /*<<< orphan*/  enq_lock; int /*<<< orphan*/  br; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 int curcpu ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ ,struct mbuf*) ; 
 struct lio* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,struct lio_instr_queue*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,scalar_t__,int*) ; 

int
FUNC8(struct ifnet *ifp, struct mbuf *m)
{
	struct lio		*lio = FUNC2(ifp);
	struct octeon_device	*oct = lio->oct_dev;
	struct lio_instr_queue	*iq;
	int	err = 0, i;
#ifdef RSS
	uint32_t	bucket_id;
#endif

	if (FUNC0(m) != M_HASHTYPE_NONE) {
#ifdef RSS
		if (rss_hash2bucket(m->m_pkthdr.flowid, M_HASHTYPE_GET(m),
				    &bucket_id) == 0) {
			i = bucket_id % oct->num_iqs;
			if (bucket_id > oct->num_iqs)
				lio_dev_dbg(oct,
					    "bucket_id (%d) > num_iqs (%d)\n",
					    bucket_id, oct->num_iqs);
		} else
#endif
			i = m->m_pkthdr.flowid % oct->num_iqs;
	} else
		i = curcpu % oct->num_iqs;

	iq = oct->instr_queue[i];

	err = FUNC1(ifp, iq->br, m);
	if (err)
		return (err);

	if (FUNC5(&iq->enq_lock)) {
		FUNC4(ifp, iq);
		FUNC6(&iq->enq_lock);
	}

	return (err);
}