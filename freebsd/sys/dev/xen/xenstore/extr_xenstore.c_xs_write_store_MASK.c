#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u_int ;
typedef  scalar_t__ XENSTORE_RING_IDX ;
struct TYPE_5__ {scalar_t__ req_cons; scalar_t__ req_prod; int /*<<< orphan*/  req; } ;
struct TYPE_4__ {int /*<<< orphan*/  xen_intr_handle; int /*<<< orphan*/  ring_lock; int /*<<< orphan*/  request_mutex; } ;

/* Variables and functions */
 int EIO ; 
 int EWOULDBLOCK ; 
 int PCATCH ; 
 int PDROP ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 scalar_t__ XENSTORE_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,char const*,unsigned int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* xen_store ; 
 TYPE_1__ xs ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 void* FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int
FUNC9(const void *tdata, unsigned len)
{
	XENSTORE_RING_IDX cons, prod;
	const char *data = (const char *)tdata;
	int error;

	FUNC4(&xs.request_mutex, SX_XLOCKED);
	while (len != 0) {
		void *dst;
		u_int avail;

		/* Hold lock so we can't miss wakeups should we block. */
		FUNC2(&xs.ring_lock);
		cons = xen_store->req_cons;
		prod = xen_store->req_prod;
		if ((prod - cons) == XENSTORE_RING_SIZE) {
			/*
			 * Output ring is full. Wait for a ring event.
			 *
			 * Note that the events from both queues
			 * are combined, so being woken does not
			 * guarantee that data exist in the read
			 * ring.
			 *
			 * To simplify error recovery and the retry,
			 * we specify PDROP so our lock is *not* held
			 * when msleep returns.
			 */
			error = FUNC1(xen_store, &xs.ring_lock, PCATCH|PDROP,
			     "xbwrite", /*timeout*/0);
			if (error && error != EWOULDBLOCK)
				return (error);

			/* Try again. */
			continue;
		}
		FUNC3(&xs.ring_lock);

		/* Verify queue sanity. */
		if (!FUNC7(cons, prod)) {
			xen_store->req_cons = xen_store->req_prod = 0;
			return (EIO);
		}

		dst = FUNC8(cons, prod, xen_store->req, &avail);
		if (avail > len)
			avail = len;

		FUNC0(dst, data, avail);
		data += avail;
		len -= avail;

		/*
		 * The store to the producer index, which indicates
		 * to the other side that new data has arrived, must
		 * be visible only after our copy of the data into the
		 * ring has completed.
		 */
		FUNC5();
		xen_store->req_prod += avail;

		/*
		 * xen_intr_signal() implies mb(). The other side will see
		 * the change to req_prod at the time of the interrupt.
		 */
		FUNC6(xs.xen_intr_handle);
	}

	return (0);
}