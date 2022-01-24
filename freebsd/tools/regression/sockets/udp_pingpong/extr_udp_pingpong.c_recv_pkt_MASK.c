#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct test_pkt {size_t pnum; TYPE_3__* tss; int /*<<< orphan*/  data; } ;
struct test_ctx {scalar_t__ use_recvmsg; int nrecvd; TYPE_1__* test_pkts; int /*<<< orphan*/ * fds; int /*<<< orphan*/  name; TYPE_2__* pfds; } ;
typedef  int /*<<< orphan*/  recv_buf ;
struct TYPE_6__ {int /*<<< orphan*/  recvd; } ;
struct TYPE_5__ {scalar_t__ revents; } ;
struct TYPE_4__ {scalar_t__ lost; int /*<<< orphan*/  tss; } ;

/* Variables and functions */
 size_t NPKTS ; 
 int /*<<< orphan*/  FUNC0 (struct test_ctx*,size_t) ; 
 int /*<<< orphan*/  PKT_SIZE ; 
 scalar_t__ POLLIN ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC5 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct test_ctx*,int,char const*,struct test_pkt*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct test_ctx*,int,char const*,struct test_pkt*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct test_ctx *tcp, int fdidx, const char *face, int tout)
{
    int pr;
    struct test_pkt recv_buf;
    size_t rlen;

    pr = FUNC5(&tcp->pfds[fdidx], 1, tout);
    if (pr < 0) {
        FUNC1(1, "%s: %s: poll(%d)", tcp->name, face, tcp->fds[fdidx]);
    }
    if (pr == 0) {
        return (-1);
    }
    if(tcp->pfds[fdidx].revents != POLLIN) {
        FUNC2(1, "%s: %s: poll(%d): unexpected result", tcp->name, face,
          tcp->fds[fdidx]);
    }
    rlen = sizeof(recv_buf);
    if (tcp->use_recvmsg == 0) {
        FUNC6(tcp, fdidx, face, &recv_buf, rlen,
          &recv_buf.tss[fdidx].recvd);
    } else {
        FUNC7(tcp, fdidx, face, &recv_buf, rlen,
          &recv_buf.tss[fdidx].recvd);
    }
    if (recv_buf.pnum < 0 || recv_buf.pnum >= NPKTS ||
      FUNC3(recv_buf.data, FUNC0(tcp, recv_buf.pnum), PKT_SIZE) != 0) {
        FUNC2(1, "%s: %s: recv(%d): corrupted data, packet %d", tcp->name,
          face, tcp->fds[fdidx], recv_buf.pnum);
    }
    tcp->nrecvd += 1;
    FUNC4(tcp->test_pkts[recv_buf.pnum].tss, recv_buf.tss,
      sizeof(recv_buf.tss));
    tcp->test_pkts[recv_buf.pnum].lost = 0;
    return (recv_buf.pnum);
}