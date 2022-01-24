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
typedef  int /*<<< orphan*/  wd ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_3__ {void* out_time; } ;
struct whoent {TYPE_1__ we_utmp; void* we_idle; } ;
struct whod {scalar_t__ wd_vers; scalar_t__ wd_type; char* wd_hostname; int /*<<< orphan*/  wd_recvtime; struct whoent* wd_we; void* wd_boottime; void** wd_loadav; void* wd_sendtime; } ;
struct stat {int st_size; } ;
struct sockaddr_in {scalar_t__ sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_4__ {scalar_t__ s_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CREATE ; 
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_FTRUNCATE ; 
 int /*<<< orphan*/  CAP_LOOKUP ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int O_CREAT ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int WHDRSIZE ; 
 scalar_t__ WHODTYPE_STATUS ; 
 scalar_t__ WHODVERSION ; 
 int /*<<< orphan*/  _PATH_RWHODIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  insecure_mode ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (char*,int) ; 
 int FUNC12 (int,char*,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct whod*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  s ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*) ; 
 TYPE_2__* sp ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int) ; 

void
FUNC19(void)
{
	struct sockaddr_in from;
	struct stat st;
	cap_rights_t rights;
	char path[64];
	int dirfd;
	struct whod wd;
	socklen_t len;
	int cc, whod;
	time_t t;

	len = sizeof(from);
	dirfd = FUNC11(".", O_RDONLY | O_DIRECTORY);
	if (dirfd < 0) {
		FUNC15(LOG_WARNING, "%s: %m", _PATH_RWHODIR);
		FUNC5(1);
	}
	FUNC1(&rights, CAP_CREATE, CAP_FSTAT, CAP_FTRUNCATE,
	    CAP_LOOKUP, CAP_SEEK, CAP_WRITE);
	if (FUNC3(dirfd, &rights) < 0) {
		FUNC15(LOG_WARNING, "cap_rights_limit: %m");
		FUNC5(1);
	}
	if (FUNC2() < 0) {
		FUNC15(LOG_ERR, "cap_enter: %m");
		FUNC5(1);
	}
	for (;;) {
		cc = FUNC13(s, &wd, sizeof(wd), 0, (struct sockaddr *)&from,
		    &len);
		if (cc <= 0) {
			if (cc < 0 && errno != EINTR)
				FUNC15(LOG_WARNING, "recv: %m");
			continue;
		}
		if (from.sin_port != sp->s_port && !insecure_mode) {
			FUNC15(LOG_WARNING, "%d: bad source port from %s",
			    FUNC10(from.sin_port), FUNC8(from.sin_addr));
			continue;
		}
		if (cc < WHDRSIZE) {
			FUNC15(LOG_WARNING, "short packet from %s",
			    FUNC8(from.sin_addr));
			continue;
		}
		if (wd.wd_vers != WHODVERSION)
			continue;
		if (wd.wd_type != WHODTYPE_STATUS)
			continue;
		if (!FUNC17(wd.wd_hostname, sizeof(wd.wd_hostname))) {
			FUNC15(LOG_WARNING, "malformed host name from %s",
			    FUNC8(from.sin_addr));
			continue;
		}
		(void) FUNC14(path, sizeof(path), "whod.%s", wd.wd_hostname);
		/*
		 * Rather than truncating and growing the file each time,
		 * use ftruncate if size is less than previous size.
		 */
		whod = FUNC12(dirfd, path, O_WRONLY | O_CREAT, 0644);
		if (whod < 0) {
			FUNC15(LOG_WARNING, "%s: %m", path);
			continue;
		}
		FUNC1(&rights, CAP_FSTAT, CAP_FTRUNCATE, CAP_WRITE);
		if (FUNC3(whod, &rights) < 0) {
			FUNC15(LOG_WARNING, "cap_rights_limit: %m");
			FUNC5(1);
		}
#if ENDIAN != BIG_ENDIAN
		{
			struct whoent *we;
			int i, n;

			n = (cc - WHDRSIZE) / sizeof(struct whoent);
			/* undo header byte swapping before writing to file */
			wd.wd_sendtime = ntohl(wd.wd_sendtime);
			for (i = 0; i < 3; i++)
				wd.wd_loadav[i] = ntohl(wd.wd_loadav[i]);
			wd.wd_boottime = ntohl(wd.wd_boottime);
			we = wd.wd_we;
			for (i = 0; i < n; i++) {
				we->we_idle = ntohl(we->we_idle);
				we->we_utmp.out_time =
				    ntohl(we->we_utmp.out_time);
				we++;
			}
		}
#endif
		(void) FUNC16(&t);
		wd.wd_recvtime = FUNC0(t);
		(void) FUNC18(whod, (char *)&wd, cc);
		if (FUNC6(whod, &st) < 0 || st.st_size > cc)
			FUNC7(whod, cc);
		(void) FUNC4(whod);
	}
	(void) FUNC4(dirfd);
}