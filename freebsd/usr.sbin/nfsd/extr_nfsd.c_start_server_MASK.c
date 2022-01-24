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
struct nfsd_nfsd_args {char* principal; scalar_t__ minthreads; scalar_t__ maxthreads; } ;
struct addrinfo {char* ai_canonname; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  principal ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 scalar_t__ EAUTH ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ masterpid ; 
 scalar_t__ maxthreads ; 
 scalar_t__ maxthreads_set ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ minthreads ; 
 scalar_t__ minthreads_set ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ nfsdcnt ; 
 scalar_t__ nfsdcnt_set ; 
 int FUNC8 (int /*<<< orphan*/ ,struct nfsd_nfsd_args*) ; 
 int /*<<< orphan*/  nfssvc_nfsd ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC13(int master, struct nfsd_nfsd_args *nfsdargp, const char *vhost)
{
	char principal[MAXHOSTNAMELEN + 5];
	int status, error;
	char hostname[MAXHOSTNAMELEN + 1], *cp;
	struct addrinfo *aip, hints;

	status = 0;
	if (vhost == NULL)
		FUNC4(hostname, sizeof (hostname));
	else
		FUNC11(hostname, vhost, sizeof (hostname));
	FUNC9(principal, sizeof (principal), "nfs@%s", hostname);
	if ((cp = FUNC10(hostname, '.')) == NULL ||
	    *(cp + 1) == '\0') {
		/* If not fully qualified, try getaddrinfo() */
		FUNC6((void *)&hints, 0, sizeof (hints));
		hints.ai_flags = AI_CANONNAME;
		error = FUNC3(hostname, NULL, &hints, &aip);
		if (error == 0) {
			if (aip->ai_canonname != NULL &&
			    (cp = FUNC10(aip->ai_canonname, '.')) !=
			    NULL && *(cp + 1) != '\0')
				FUNC9(principal, sizeof (principal),
				    "nfs@%s", aip->ai_canonname);
			FUNC1(aip);
		}
	}
	nfsdargp->principal = principal;

	if (nfsdcnt_set)
		nfsdargp->minthreads = nfsdargp->maxthreads = nfsdcnt;
	else {
		nfsdargp->minthreads = minthreads_set ? minthreads : FUNC2();
		nfsdargp->maxthreads = maxthreads_set ? maxthreads : nfsdargp->minthreads;
		if (nfsdargp->maxthreads < nfsdargp->minthreads)
			nfsdargp->maxthreads = nfsdargp->minthreads;
	}
	error = FUNC8(nfssvc_nfsd, nfsdargp);
	if (error < 0 && errno == EAUTH) {
		/*
		 * This indicates that it could not register the
		 * rpcsec_gss credentials, usually because the
		 * gssd daemon isn't running.
		 * (only the experimental server with nfsv4)
		 */
		FUNC12(LOG_ERR, "No gssd, using AUTH_SYS only");
		principal[0] = '\0';
		error = FUNC8(nfssvc_nfsd, nfsdargp);
	}
	if (error < 0) {
		if (errno == ENXIO) {
			FUNC12(LOG_ERR, "Bad -p option, cannot run");
			if (masterpid != 0 && master == 0)
				FUNC5(masterpid, SIGUSR1);
		} else
			FUNC12(LOG_ERR, "nfssvc: %m");
		status = 1;
	}
	if (master)
		FUNC7(status);
	else
		FUNC0(status);
}