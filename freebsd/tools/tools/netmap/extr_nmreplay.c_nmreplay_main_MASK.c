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
struct _qs {char* prod_ifname; int /*<<< orphan*/ * pcap; int /*<<< orphan*/  cons_ifname; int /*<<< orphan*/  t0; } ;
struct pipe_args {int /*<<< orphan*/ * pb; int /*<<< orphan*/  cons_core; struct _qs q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int do_abort ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void *
FUNC10(void *_a)
{
    struct pipe_args *a = _a;
    struct _qs *q = &a->q;
    const char *cap_fname = q->prod_ifname;

    FUNC8(a->cons_core);
    FUNC7(&q->t0, 0); /* starting reference */
    if (cap_fname == NULL) {
	goto fail;
    }
    q->pcap = FUNC6(cap_fname);
    if (q->pcap == NULL) {
	FUNC0("unable to read file %s", cap_fname);
	goto fail;
    }
    FUNC5((void*)a);
    FUNC3(q->pcap);
    q->pcap = NULL;
    a->pb = FUNC4(q->cons_ifname, NULL, 0, NULL);
    if (a->pb == NULL) {
	FUNC0("cannot open netmap on %s", q->cons_ifname);
	do_abort = 1; // XXX any better way ?
	return NULL;
    }
    /* continue as cons() */
    FUNC1("prepare to send packets");
    FUNC9(1000);
    FUNC2((void*)a);
    FUNC0("exiting on abort");
fail:
    if (q->pcap != NULL) {
	FUNC3(q->pcap);
    }
    do_abort = 1;
    return NULL;
}