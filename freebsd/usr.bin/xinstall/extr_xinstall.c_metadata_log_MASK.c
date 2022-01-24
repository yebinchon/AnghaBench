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
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct flock {int /*<<< orphan*/  l_type; int /*<<< orphan*/  l_whence; scalar_t__ l_len; scalar_t__ l_start; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  VIS_CSTYLE ; 
 int /*<<< orphan*/  VIS_OCTAL ; 
 char const* destdir ; 
 char* digest ; 
 scalar_t__ dopreserve ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*) ; 
 char* fflags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* group ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  metafile ; 
 int /*<<< orphan*/  metafp ; 
 int mode ; 
 char* owner ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int /*<<< orphan*/ ,char const*) ; 
 char* tags ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(const char *path, const char *type, struct timespec *ts,
	const char *slink, const char *digestresult, off_t size)
{
	static const char extra[] = { ' ', '\t', '\n', '\\', '#', '\0' };
	const char *p;
	char *buf;
	size_t destlen;
	struct flock metalog_lock;

	if (!metafp)	
		return;
	/* Buffer for strsvis(3). */
	buf = (char *)FUNC6(4 * FUNC8(path) + 1);
	if (buf == NULL) {
		FUNC12("%s", FUNC7(ENOMEM));
		return;
	}

	/* Lock log file. */
	metalog_lock.l_start = 0;
	metalog_lock.l_len = 0;
	metalog_lock.l_whence = SEEK_SET;
	metalog_lock.l_type = F_WRLCK;
	if (FUNC0(FUNC2(metafp), F_SETLKW, &metalog_lock) == -1) {
		FUNC11("can't lock %s", metafile);
		FUNC5(buf);
		return;
	}

	/* Remove destdir. */
	p = path;
	if (destdir) {
		destlen = FUNC8(destdir);
		if (FUNC9(p, destdir, destlen) == 0 &&
		    (p[destlen] == '/' || p[destlen] == '\0'))
			p += destlen;
	}
	while (*p && *p == '/')
		p++;
	FUNC10(buf, p, VIS_OCTAL, extra);
	p = buf;
	/* Print details. */
	FUNC3(metafp, ".%s%s type=%s", *p ? "/" : "", p, type);
	if (owner)
		FUNC3(metafp, " uname=%s", owner);
	if (group)
		FUNC3(metafp, " gname=%s", group);
	FUNC3(metafp, " mode=%#o", mode);
	if (slink) {
		FUNC10(buf, slink, VIS_CSTYLE, extra);	/* encode link */
		FUNC3(metafp, " link=%s", buf);
	}
	if (*type == 'f') /* type=file */
		FUNC3(metafp, " size=%lld", (long long)size);
	if (ts != NULL && dopreserve)
		FUNC3(metafp, " time=%lld.%09d",
			(long long)ts[1].tv_sec, ts[1].tv_nsec);
	if (digestresult && digest)
		FUNC3(metafp, " %s=%s", digest, digestresult);
	if (fflags)
		FUNC3(metafp, " flags=%s", fflags);
	if (tags)
		FUNC3(metafp, " tags=%s", tags);
	FUNC4('\n', metafp);
	/* Flush line. */
	FUNC1(metafp);

	/* Unlock log file. */
	metalog_lock.l_type = F_UNLCK;
	if (FUNC0(FUNC2(metafp), F_SETLKW, &metalog_lock) == -1)
		FUNC11("can't unlock %s", metafile);
	FUNC5(buf);
}