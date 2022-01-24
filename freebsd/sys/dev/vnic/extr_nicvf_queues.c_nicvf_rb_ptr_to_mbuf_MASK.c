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
struct rbuf_info {int /*<<< orphan*/  dmap; int /*<<< orphan*/  dmat; struct mbuf* mbuf; } ;
struct nicvf {int /*<<< orphan*/  dev; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 struct rbuf_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *
FUNC7(struct nicvf *nic, bus_addr_t rb_ptr)
{
	struct mbuf *mbuf;
	struct rbuf_info *rinfo;

	/* Get buffer start address and alignment offset */
	rinfo = FUNC0(FUNC1(rb_ptr));

	/* Now retrieve mbuf to give to stack */
	mbuf = rinfo->mbuf;
	if (FUNC2(mbuf == NULL)) {
		FUNC6("%s: Received packet fragment with NULL mbuf",
		    FUNC5(nic->dev));
	}
	/*
	 * Clear the mbuf in the descriptor to indicate
	 * that this slot is processed and free to use.
	 */
	rinfo->mbuf = NULL;

	FUNC3(rinfo->dmat, rinfo->dmap, BUS_DMASYNC_POSTREAD);
	FUNC4(rinfo->dmat, rinfo->dmap);

	return (mbuf);
}