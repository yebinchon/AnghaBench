#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_11__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_6__ sin_addr; } ;
struct TYPE_10__ {scalar_t__ sa_family; int /*<<< orphan*/  sa_len; } ;
struct TYPE_9__ {TYPE_1__ sin; TYPE_3__ sa; } ;
typedef  TYPE_2__ sockunion_t ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EX_IOERR ; 
 int EX_OSERR ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int RXBUFSIZE ; 
#define  SIGALRM 129 
#define  SIGINT 128 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ dodebug ; 
 scalar_t__ doverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_6__) ; 
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ timeout ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(int sock, sockunion_t *group, sockunion_t *source)
{
	int		 error;
	sockunion_t	 from;
	char		 groupname[NI_MAXHOST];
	ssize_t		 len;
	size_t		 npackets;
	int		 jmpretval;
	char		 rxbuf[RXBUFSIZE];
	char		 sourcename[NI_MAXHOST];

	FUNC1(source->sa.sa_family == AF_INET);

	/*
	 * Return immediately if we don't need to wait for traffic.
	 */
	if (timeout == 0)
		return (0);

	error = FUNC4(&group->sa, group->sa.sa_len, groupname,
	    NI_MAXHOST, NULL, 0, NI_NUMERICHOST);
	if (error) {
		FUNC2(stderr, "getnameinfo: %s\n", FUNC3(error));
		return (error);
	}

	error = FUNC4(&source->sa, source->sa.sa_len, sourcename,
	    NI_MAXHOST, NULL, 0, NI_NUMERICHOST);
	if (error) {
		FUNC2(stderr, "getnameinfo: %s\n", FUNC3(error));
		return (error);
	}

	FUNC2(stdout,
	    "Waiting %d seconds for inbound traffic on group %s\n"
	    "Expecting no traffic from blocked source: %s\n",
	    (int)timeout, groupname, sourcename);

	FUNC8(SIGINT, signal_handler);
	FUNC8(SIGALRM, signal_handler);

	error = 0;
	npackets = 0;
	FUNC0(timeout);
	while (0 == (jmpretval = FUNC7(jmpbuf))) {
		len = FUNC6(sock, rxbuf, RXBUFSIZE, 0, &from.sa,
		    (socklen_t *)&from.sa.sa_len);
		if (dodebug) {
			FUNC2(stderr, "debug: packet received from %s\n",
			    FUNC5(from.sin.sin_addr));
		}
		if (source &&
		    source->sin.sin_addr.s_addr == from.sin.sin_addr.s_addr)
			break;
		npackets++;
	}

	if (doverbose) {
		FUNC2(stderr, "Number of datagrams received from "
		    "non-blocked sources: %d\n", (int)npackets);
	}

	switch (jmpretval) {
	case SIGALRM:	/* ok */
		break;
	case SIGINT:	/* go bye bye */
		FUNC2(stderr, "interrupted\n");
		error = 20;
		break;
	case 0:		/* Broke out of loop; saw a bad source. */
		FUNC2(stderr, "FAIL: got packet from blocked source\n");
		error = EX_IOERR;
		break;
	default:
		FUNC9("recvfrom");
		error = EX_OSERR;
		break;
	}

	FUNC8(SIGINT, SIG_DFL);
	FUNC8(SIGALRM, SIG_DFL);

	return (error);
}