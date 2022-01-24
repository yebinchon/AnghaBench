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
struct malloc_type {int dummy; } ;
struct fw_xferlist {int dummy; } ;
struct fw_xfer {void (* hand ) (struct fw_xfer*) ;void* sc; struct firewire_comm* fc; } ;
struct firewire_comm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_xferlist*,struct fw_xfer*,int /*<<< orphan*/ ) ; 
 struct fw_xfer* FUNC1 (struct malloc_type*,int,int) ; 
 int /*<<< orphan*/  link ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(struct fw_xferlist *q, struct malloc_type *type,
    int slen, int rlen, int n,
    struct firewire_comm *fc, void *sc, void (*hand)(struct fw_xfer *))
{
	int i, s;
	struct fw_xfer *xfer;

	for (i = 0; i < n; i++) {
		xfer = FUNC1(type, slen, rlen);
		if (xfer == NULL)
			return (i);
		xfer->fc = fc;
		xfer->sc = sc;
		xfer->hand = hand;
		s = FUNC2();
		FUNC0(q, xfer, link);
		FUNC3(s);
	}
	return (n);
}