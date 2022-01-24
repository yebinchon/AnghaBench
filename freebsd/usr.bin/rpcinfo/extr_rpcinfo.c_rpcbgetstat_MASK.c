#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {int success; struct TYPE_6__* next; } ;
typedef  TYPE_1__ rpcbs_rmtcalllist ;
struct TYPE_7__ {int success; struct TYPE_7__* next; } ;
typedef  TYPE_2__ rpcbs_addrlist ;
typedef  TYPE_3__* rpcb_stat_byvers ;
struct TYPE_8__ {int setinfo; int unsetinfo; int* info; TYPE_1__* rmtinfo; TYPE_2__* addrinfo; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int FUNC1 (int,int) ; 
 int MAXFIELD ; 
 int MAXLINE ; 
#define  PMAPPROC_CALLIT 135 
#define  PMAPPROC_GETPORT 134 
#define  PMAPPROC_SET 133 
#define  PMAPPROC_UNSET 132 
 int /*<<< orphan*/  PMAPPROG ; 
#define  RPCBPROC_CALLIT 131 
#define  RPCBPROC_GETADDR 130 
 size_t RPCBPROC_GETADDRLIST ; 
 int /*<<< orphan*/  RPCBPROC_GETSTAT ; 
 size_t RPCBPROC_INDIRECT ; 
#define  RPCBPROC_SET 129 
#define  RPCBPROC_UNSET 128 
 int /*<<< orphan*/  RPCBVERS4 ; 
 size_t RPCBVERS_2_STAT ; 
 size_t RPCBVERS_3_STAT ; 
 size_t RPCBVERS_4_STAT ; 
 scalar_t__ RPC_SUCCESS ; 
 int TABSTOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (size_t,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (size_t,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int rpcb_highproc_2 ; 
 int rpcb_highproc_3 ; 
 int rpcb_highproc_4 ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 int FUNC14 (char const*) ; 
 scalar_t__ xdr_rpcb_stat_byvers ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC15(int argc, char **argv)
{
	rpcb_stat_byvers inf;
	struct timeval minutetimeout;
	register CLIENT *client;
	char *host;
	int i, j;
	rpcbs_addrlist *pa;
	rpcbs_rmtcalllist *pr;
	int cnt, flen;
#define	MAXFIELD	64
	char fieldbuf[MAXFIELD];
#define	MAXLINE		256
	char linebuf[MAXLINE];
	char *cp, *lp;
	const char *pmaphdr[] = {
		"NULL", "SET", "UNSET", "GETPORT",
		"DUMP", "CALLIT"
	};
	const char *rpcb3hdr[] = {
		"NULL", "SET", "UNSET", "GETADDR", "DUMP", "CALLIT", "TIME",
		"U2T", "T2U"
	};
	const char *rpcb4hdr[] = {
		"NULL", "SET", "UNSET", "GETADDR", "DUMP", "CALLIT", "TIME",
		"U2T",  "T2U", "VERADDR", "INDRECT", "GETLIST", "GETSTAT"
	};

#define	TABSTOP	8

	if (argc >= 1) {
		host = argv[0];
		client = FUNC5(host, RPCBVERS4, NULL);
	} else
		client = FUNC7(PMAPPROG, RPCBVERS4);
	if (client == (CLIENT *)NULL) {
		FUNC3("rpcinfo: can't contact rpcbind");
		FUNC6(1);
	}
	minutetimeout.tv_sec = 60;
	minutetimeout.tv_usec = 0;
	FUNC8((char *)&inf, 0, sizeof (rpcb_stat_byvers));
	if (FUNC0(client, RPCBPROC_GETSTAT, (xdrproc_t) xdr_void, NULL,
		(xdrproc_t) xdr_rpcb_stat_byvers, (char *)&inf, minutetimeout)
			!= RPC_SUCCESS) {
		FUNC4(client, "rpcinfo: can't contact rpcbind: ");
		FUNC6(1);
	}
	FUNC11("PORTMAP (version 2) statistics\n");
	lp = linebuf;
	for (i = 0; i <= rpcb_highproc_2; i++) {
		fieldbuf[0] = '\0';
		switch (i) {
		case PMAPPROC_SET:
			FUNC13(fieldbuf, "%d/", inf[RPCBVERS_2_STAT].setinfo);
			break;
		case PMAPPROC_UNSET:
			FUNC13(fieldbuf, "%d/",
				inf[RPCBVERS_2_STAT].unsetinfo);
			break;
		case PMAPPROC_GETPORT:
			cnt = 0;
			for (pa = inf[RPCBVERS_2_STAT].addrinfo; pa;
				pa = pa->next)
				cnt += pa->success;
			FUNC13(fieldbuf, "%d/", cnt);
			break;
		case PMAPPROC_CALLIT:
			cnt = 0;
			for (pr = inf[RPCBVERS_2_STAT].rmtinfo; pr;
				pr = pr->next)
				cnt += pr->success;
			FUNC13(fieldbuf, "%d/", cnt);
			break;
		default: break;  /* For the remaining ones */
		}
		cp = &fieldbuf[0] + FUNC14(fieldbuf);
		FUNC13(cp, "%d", inf[RPCBVERS_2_STAT].info[i]);
		flen = FUNC14(fieldbuf);
		FUNC11("%s%s", pmaphdr[i],
			FUNC12((TABSTOP * (1 + flen / TABSTOP))
			- FUNC14(pmaphdr[i])));
		FUNC13(lp, "%s%s", fieldbuf,
			FUNC12(cnt = ((TABSTOP * (1 + flen / TABSTOP))
			- flen)));
		lp += (flen + cnt);
	}
	FUNC11("\n%s\n\n", linebuf);

	if (inf[RPCBVERS_2_STAT].info[PMAPPROC_CALLIT]) {
		FUNC11("PMAP_RMTCALL call statistics\n");
		FUNC10(RPCBVERS_2_STAT, &inf[RPCBVERS_2_STAT]);
		FUNC11("\n");
	}

	if (inf[RPCBVERS_2_STAT].info[PMAPPROC_GETPORT]) {
		FUNC11("PMAP_GETPORT call statistics\n");
		FUNC9(RPCBVERS_2_STAT, &inf[RPCBVERS_2_STAT]);
		FUNC11("\n");
	}

	FUNC11("RPCBIND (version 3) statistics\n");
	lp = linebuf;
	for (i = 0; i <= rpcb_highproc_3; i++) {
		fieldbuf[0] = '\0';
		switch (i) {
		case RPCBPROC_SET:
			FUNC13(fieldbuf, "%d/", inf[RPCBVERS_3_STAT].setinfo);
			break;
		case RPCBPROC_UNSET:
			FUNC13(fieldbuf, "%d/",
				inf[RPCBVERS_3_STAT].unsetinfo);
			break;
		case RPCBPROC_GETADDR:
			cnt = 0;
			for (pa = inf[RPCBVERS_3_STAT].addrinfo; pa;
				pa = pa->next)
				cnt += pa->success;
			FUNC13(fieldbuf, "%d/", cnt);
			break;
		case RPCBPROC_CALLIT:
			cnt = 0;
			for (pr = inf[RPCBVERS_3_STAT].rmtinfo; pr;
				pr = pr->next)
				cnt += pr->success;
			FUNC13(fieldbuf, "%d/", cnt);
			break;
		default: break;  /* For the remaining ones */
		}
		cp = &fieldbuf[0] + FUNC14(fieldbuf);
		FUNC13(cp, "%d", inf[RPCBVERS_3_STAT].info[i]);
		flen = FUNC14(fieldbuf);
		FUNC11("%s%s", rpcb3hdr[i],
			FUNC12((TABSTOP * (1 + flen / TABSTOP))
			- FUNC14(rpcb3hdr[i])));
		FUNC13(lp, "%s%s", fieldbuf,
			FUNC12(cnt = ((TABSTOP * (1 + flen / TABSTOP))
			- flen)));
		lp += (flen + cnt);
	}
	FUNC11("\n%s\n\n", linebuf);

	if (inf[RPCBVERS_3_STAT].info[RPCBPROC_CALLIT]) {
		FUNC11("RPCB_RMTCALL (version 3) call statistics\n");
		FUNC10(RPCBVERS_3_STAT, &inf[RPCBVERS_3_STAT]);
		FUNC11("\n");
	}

	if (inf[RPCBVERS_3_STAT].info[RPCBPROC_GETADDR]) {
		FUNC11("RPCB_GETADDR (version 3) call statistics\n");
		FUNC9(RPCBVERS_3_STAT, &inf[RPCBVERS_3_STAT]);
		FUNC11("\n");
	}

	FUNC11("RPCBIND (version 4) statistics\n");

	for (j = 0; j <= 9; j += 9) { /* Just two iterations for printing */
		lp = linebuf;
		for (i = j; i <= FUNC1(8, rpcb_highproc_4 - 9 + j); i++) {
			fieldbuf[0] = '\0';
			switch (i) {
			case RPCBPROC_SET:
				FUNC13(fieldbuf, "%d/",
					inf[RPCBVERS_4_STAT].setinfo);
				break;
			case RPCBPROC_UNSET:
				FUNC13(fieldbuf, "%d/",
					inf[RPCBVERS_4_STAT].unsetinfo);
				break;
			case RPCBPROC_GETADDR:
				cnt = 0;
				for (pa = inf[RPCBVERS_4_STAT].addrinfo; pa;
					pa = pa->next)
					cnt += pa->success;
				FUNC13(fieldbuf, "%d/", cnt);
				break;
			case RPCBPROC_CALLIT:
				cnt = 0;
				for (pr = inf[RPCBVERS_4_STAT].rmtinfo; pr;
					pr = pr->next)
					cnt += pr->success;
				FUNC13(fieldbuf, "%d/", cnt);
				break;
			default: break;  /* For the remaining ones */
			}
			cp = &fieldbuf[0] + FUNC14(fieldbuf);
			/*
			 * XXX: We also add RPCBPROC_GETADDRLIST queries to
			 * RPCB_GETADDR because rpcbind includes the
			 * RPCB_GETADDRLIST successes in RPCB_GETADDR.
			 */
			if (i != RPCBPROC_GETADDR)
			    FUNC13(cp, "%d", inf[RPCBVERS_4_STAT].info[i]);
			else
			    FUNC13(cp, "%d", inf[RPCBVERS_4_STAT].info[i] +
			    inf[RPCBVERS_4_STAT].info[RPCBPROC_GETADDRLIST]);
			flen = FUNC14(fieldbuf);
			FUNC11("%s%s", rpcb4hdr[i],
				FUNC12((TABSTOP * (1 + flen / TABSTOP))
				- FUNC14(rpcb4hdr[i])));
			FUNC13(lp, "%s%s", fieldbuf,
				FUNC12(cnt = ((TABSTOP * (1 + flen / TABSTOP))
				- flen)));
			lp += (flen + cnt);
		}
		FUNC11("\n%s\n", linebuf);
	}

	if (inf[RPCBVERS_4_STAT].info[RPCBPROC_CALLIT] ||
			    inf[RPCBVERS_4_STAT].info[RPCBPROC_INDIRECT]) {
		FUNC11("\n");
		FUNC11("RPCB_RMTCALL (version 4) call statistics\n");
		FUNC10(RPCBVERS_4_STAT, &inf[RPCBVERS_4_STAT]);
	}

	if (inf[RPCBVERS_4_STAT].info[RPCBPROC_GETADDR]) {
		FUNC11("\n");
		FUNC11("RPCB_GETADDR (version 4) call statistics\n");
		FUNC9(RPCBVERS_4_STAT, &inf[RPCBVERS_4_STAT]);
	}
	FUNC2(client);
}