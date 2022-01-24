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
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_len; } ;
struct rpcent {char* r_name; } ;
typedef  scalar_t__ rpcprog_t ;
typedef  int rpcproc_t ;
typedef  int /*<<< orphan*/  progbuf ;

/* Variables and functions */
 scalar_t__ AF_LOCAL ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rpcent* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,char const*,char*,char const*) ; 

void
FUNC8(int severity, struct sockaddr *addr, rpcproc_t procnum, rpcprog_t prognum,
      const char *text)
{
	const char *procname;
	char	procbuf[32];
	char   *progname;
	char	progbuf[32];
	char fromname[NI_MAXHOST];
	struct rpcent *rpc;
	static const char *procmap[] = {
	/* RPCBPROC_NULL */		"null",
	/* RPCBPROC_SET */		"set",
	/* RPCBPROC_UNSET */		"unset",
	/* RPCBPROC_GETADDR */		"getport/addr",
	/* RPCBPROC_DUMP */		"dump",
	/* RPCBPROC_CALLIT */		"callit",
	/* RPCBPROC_GETTIME */		"gettime",
	/* RPCBPROC_UADDR2TADDR */	"uaddr2taddr",
	/* RPCBPROC_TADDR2UADDR */	"taddr2uaddr",
	/* RPCBPROC_GETVERSADDR */	"getversaddr",
	/* RPCBPROC_INDIRECT */		"indirect",
	/* RPCBPROC_GETADDRLIST */	"getaddrlist",
	/* RPCBPROC_GETSTAT */		"getstat"
	};
   
	/*
	 * Fork off a process or the portmap daemon might hang while
	 * getrpcbynumber() or syslog() does its thing.
	 */

	if (FUNC1() == 0) {
		FUNC4("logit");

		/* Try to map program number to name. */

		if (prognum == 0) {
			progname = "";
		} else if ((rpc = FUNC3((int) prognum))) {
			progname = rpc->r_name;
		} else {
			FUNC5(progname = progbuf, sizeof(progbuf), "%u",
			    (unsigned)prognum);
		}

		/* Try to map procedure number to name. */

		if (procnum >= (sizeof procmap / sizeof (char *))) {
			FUNC5(procbuf, sizeof procbuf, "%u",
			    (unsigned)procnum);
			procname = procbuf;
		} else
			procname = procmap[procnum];

		/* Write syslog record. */

		if (addr->sa_family == AF_LOCAL)
			FUNC6(fromname, "local");
		else
			FUNC2(addr, addr->sa_len, fromname,
			    sizeof fromname, NULL, 0, NI_NUMERICHOST);

		FUNC7(severity, "connect from %s to %s(%s)%s",
			fromname, procname, progname, text);
		FUNC0(0);
	}
}