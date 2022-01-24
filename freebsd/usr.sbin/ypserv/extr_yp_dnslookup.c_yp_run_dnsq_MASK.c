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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct hostent {char* h_addr; int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addrtype; } ;
struct circleq_dnsentry {scalar_t__ type; struct circleq_dnsentry* name; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addrtype; scalar_t__ addr; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  BY_DNS_ID ; 
 int /*<<< orphan*/  MAXPACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct circleq_dnsentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ T_PTR ; 
 struct hostent* FUNC1 (char*,int,struct circleq_dnsentry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct circleq_dnsentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hostent*) ; 
 int /*<<< orphan*/  pending ; 
 int /*<<< orphan*/  qhead ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  resfd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 struct circleq_dnsentry* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct circleq_dnsentry*,int /*<<< orphan*/ ) ; 

void
FUNC13(void)
{
	register struct circleq_dnsentry *q;
	char buf[sizeof(HEADER) + MAXPACKET];
	struct sockaddr_in sin;
	socklen_t len;
	int rval;
	HEADER *hptr;
	struct hostent *hent;

	if (debug)
		FUNC9("running dns queue");

	FUNC2(buf, sizeof(buf));

	len = sizeof(struct sockaddr_in);
	rval = FUNC7(resfd, buf, sizeof(buf), 0,
			(struct sockaddr *)&sin, &len);

	if (rval == -1) {
		FUNC9("recvfrom failed: %s", FUNC8(errno));
		return;
	}

	/*
	 * We may have data left in the socket that represents
	 * replies to earlier queries that we don't care about
	 * anymore. If there are no lookups pending or the packet
	 * ID doesn't match any of the queue IDs, just drop it
	 * on the floor.
	 */
	hptr = (HEADER *)&buf;
	if (!pending ||
		(q = FUNC10(FUNC5(hptr->id), BY_DNS_ID)) == NULL) {
		/* ignore */
		return;
	}

	if (debug)
		FUNC9("got dns reply from %s", FUNC4(sin.sin_addr));

	hent = FUNC1(buf, rval, q->name, q->type);

	if (hent != NULL) {
		if (q->type == T_PTR) {
			hent->h_addr = (char *)q->addr;
			hent->h_addrtype = q->addrtype;
			hent->h_length = q->addrlen;
		}
	}

	/* Got an answer ready for a client -- send it off. */
	FUNC12(q, FUNC6(hent));
	pending--;
	FUNC0(&qhead, q, links);
	FUNC3(q->name);
	FUNC3(q);

	/* Decrement TTLs on other entries while we're here. */
	FUNC11();

	return;
}