#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct test_ctx {int nsent; int /*<<< orphan*/ * fds; int /*<<< orphan*/  name; TYPE_2__* test_pkts; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {TYPE_1__* tss; } ;
struct TYPE_3__ {int /*<<< orphan*/  sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct test_ctx*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct test_ctx *tcp, int pnum, int fdidx, const char *face)
{
    ssize_t r;
    size_t slen;

    slen = sizeof(tcp->test_pkts[pnum]);
    FUNC0(FUNC3(tcp), &tcp->test_pkts[pnum].tss[fdidx].sent);
    r = FUNC4(tcp->fds[fdidx], &tcp->test_pkts[pnum], slen, 0);
    if (r < 0) {
        FUNC1(1, "%s: %s: send(%d)", tcp->name, face, tcp->fds[fdidx]);
    }
    if (r < (ssize_t)slen) {
        FUNC2(1, "%s: %s: send(%d): short send", tcp->name, face,
          tcp->fds[fdidx]);
    }
    tcp->nsent += 1;
}