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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ABORT_ASSOCIATION ; 
 scalar_t__ FUNC0 (struct mbuf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,struct sockaddr*,struct sctphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mbuf *m, int iphlen, struct sockaddr *src, struct sockaddr *dst,
    struct sctphdr *sh, uint32_t vtag, struct mbuf *cause,
    uint8_t mflowtype, uint32_t mflowid, uint16_t fibnum,
    uint32_t vrf_id, uint16_t port)
{
	/* Don't respond to an ABORT with an ABORT. */
	if (FUNC0(m, iphlen, &vtag)) {
		if (cause)
			FUNC1(cause);
		return;
	}
	FUNC2(src, dst, sh, vtag, SCTP_ABORT_ASSOCIATION, cause,
	    mflowtype, mflowid, fibnum,
	    vrf_id, port);
	return;
}