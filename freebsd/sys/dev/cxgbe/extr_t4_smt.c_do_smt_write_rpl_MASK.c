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
struct smt_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct sge_iq {struct adapter* adapter; } ;
struct rss_header {int dummy; } ;
struct mbuf {int dummy; } ;
struct cpl_smt_write_rpl {scalar_t__ status; } ;
struct adapter {TYPE_1__* smt; } ;
struct TYPE_2__ {struct smt_entry* smtab; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_NONE ; 
 int EINVAL ; 
 unsigned int FUNC0 (struct cpl_smt_write_rpl const*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SMT_STATE_ERROR ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct sge_iq *iq, const struct rss_header *rss,
		struct mbuf *m)
{
	struct adapter *sc = iq->adapter;
	const struct cpl_smt_write_rpl *rpl = (const void *)(rss + 1);
	unsigned int tid = FUNC0(rpl);
	unsigned int smtidx = FUNC1(tid);

	if (FUNC2(rpl->status != CPL_ERR_NONE)) {
		struct smt_entry *e = &sc->smt->smtab[smtidx];
		FUNC3(LOG_ERR,
		    "Unexpected SMT_WRITE_RPL (%u) for entry at hw_idx %u\n",
		    rpl->status, smtidx);
		FUNC4(&e->lock);
		e->state = SMT_STATE_ERROR;
		FUNC5(&e->lock);
		return (EINVAL);
	}

	return (0);
}