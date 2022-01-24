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
struct xferstat {int dummy; } ;
struct url_stat {int size; scalar_t__ mtime; scalar_t__ atime; } ;
struct url {char const* scheme; scalar_t__ ims_time; size_t offset; int /*<<< orphan*/  doc; int /*<<< orphan*/ * host; } ;
struct timeval {long tv_sec; scalar_t__ tv_usec; } ;
struct stat {scalar_t__ st_mtime; int st_size; int st_mode; scalar_t__ st_dev; scalar_t__ st_ino; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ALLPERMS ; 
 scalar_t__ A_flag ; 
 size_t B_size ; 
 scalar_t__ EINTR ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ FETCH_OK ; 
 int /*<<< orphan*/  F_flag ; 
#define  PF_INET 129 
#define  PF_INET6 128 
 scalar_t__ R_flag ; 
 char* SCHEME_FILE ; 
 char* SCHEME_FTP ; 
 char* SCHEME_HTTP ; 
 char* SCHEME_HTTPS ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGINFO ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (int) ; 
 int S_size ; 
 int T_secs ; 
 scalar_t__ U_flag ; 
 int /*<<< orphan*/  _IOFBF ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int,char const*,char const*) ; 
 char* buf ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ d_flag ; 
 scalar_t__ errno ; 
 int family ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int fetchDebug ; 
 int /*<<< orphan*/  FUNC8 (struct url*) ; 
 scalar_t__ fetchLastErrCode ; 
 char const* fetchLastErrString ; 
 struct url* FUNC9 (char*) ; 
 int FUNC10 (struct url*,struct url_stat*,char*) ; 
 unsigned int fetchTimeout ; 
 int /*<<< orphan*/ * FUNC11 (struct url*,struct url_stat*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long) ; 
 size_t FUNC16 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct stat*) ; 
 int ftp_timeout ; 
 size_t FUNC20 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int http_timeout ; 
 char const* i_filename ; 
 scalar_t__ i_flag ; 
 scalar_t__ l_flag ; 
 scalar_t__ m_flag ; 
 int FUNC21 (char*,scalar_t__) ; 
 int /*<<< orphan*/  n_flag ; 
 scalar_t__ o_stdout ; 
 scalar_t__ p_flag ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 scalar_t__ r_flag ; 
 int FUNC23 (char*,char const*) ; 
 scalar_t__ s_flag ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  sig_handler ; 
 int sigalrm ; 
 int siginfo ; 
 int sigint ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC27 (struct xferstat*) ; 
 int /*<<< orphan*/  FUNC28 (struct xferstat*,char const*,int,size_t) ; 
 int /*<<< orphan*/  FUNC29 (struct xferstat*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC30 (char*,char*) ; 
 scalar_t__ FUNC31 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC32 (char const*,char*) ; 
 scalar_t__ FUNC33 (char const*) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC35 (char const*,char) ; 
 int FUNC36 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 scalar_t__ FUNC38 (char*,struct timeval*) ; 
 int v_level ; 
 int /*<<< orphan*/  FUNC39 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC40 (char*,...) ; 

__attribute__((used)) static int
FUNC41(char *URL, const char *path)
{
	struct url *url;
	struct url_stat us;
	struct stat sb, nsb;
	struct xferstat xs;
	FILE *f, *of;
	size_t size, readcnt, wr;
	off_t count;
	char flags[8];
	const char *slash;
	char *tmppath;
	int r;
	unsigned timeout;
	char *ptr;

	f = of = NULL;
	tmppath = NULL;

	timeout = 0;
	*flags = 0;
	count = 0;

	/* set verbosity level */
	if (v_level > 1)
		FUNC30(flags, "v");
	if (v_level > 2)
		fetchDebug = 1;

	/* parse URL */
	url = NULL;
	if (*URL == '\0') {
		FUNC40("empty URL");
		goto failure;
	}
	if ((url = FUNC9(URL)) == NULL) {
		FUNC40("%s: parse error", URL);
		goto failure;
	}

	/* if no scheme was specified, take a guess */
	if (!*url->scheme) {
		if (!*url->host)
			FUNC32(url->scheme, SCHEME_FILE);
		else if (FUNC34(url->host, "ftp.", 4) == 0)
			FUNC32(url->scheme, SCHEME_FTP);
		else if (FUNC34(url->host, "www.", 4) == 0)
			FUNC32(url->scheme, SCHEME_HTTP);
	}

	/* common flags */
	switch (family) {
	case PF_INET:
		FUNC30(flags, "4");
		break;
	case PF_INET6:
		FUNC30(flags, "6");
		break;
	}

	/* FTP specific flags */
	if (FUNC31(url->scheme, SCHEME_FTP) == 0) {
		if (p_flag)
			FUNC30(flags, "p");
		if (d_flag)
			FUNC30(flags, "d");
		if (U_flag)
			FUNC30(flags, "l");
		timeout = T_secs ? T_secs : ftp_timeout;
	}

	/* HTTP specific flags */
	if (FUNC31(url->scheme, SCHEME_HTTP) == 0 ||
	    FUNC31(url->scheme, SCHEME_HTTPS) == 0) {
		if (d_flag)
			FUNC30(flags, "d");
		if (A_flag)
			FUNC30(flags, "A");
		timeout = T_secs ? T_secs : http_timeout;
		if (i_flag) {
			if (FUNC26(i_filename, &sb)) {
				FUNC39("%s: stat()", i_filename);
				goto failure;
			}
			url->ims_time = sb.st_mtime;
			FUNC30(flags, "i");
		}
	}

	/* set the protocol timeout. */
	fetchTimeout = timeout;

	/* just print size */
	if (s_flag) {
		if (timeout)
			FUNC1(timeout);
		r = FUNC10(url, &us, flags);
		if (timeout)
			FUNC1(0);
		if (sigalrm || sigint)
			goto signal;
		if (r == -1) {
			FUNC40("%s", fetchLastErrString);
			goto failure;
		}
		if (us.size == -1)
			FUNC22("Unknown\n");
		else
			FUNC22("%jd\n", (intmax_t)us.size);
		goto success;
	}

	/*
	 * If the -r flag was specified, we have to compare the local
	 * and remote files, so we should really do a fetchStat()
	 * first, but I know of at least one HTTP server that only
	 * sends the content size in response to GET requests, and
	 * leaves it out of replies to HEAD requests.  Also, in the
	 * (frequent) case that the local and remote files match but
	 * the local file is truncated, we have sufficient information
	 * before the compare to issue a correct request.  Therefore,
	 * we always issue a GET request as if we were sure the local
	 * file was a truncated copy of the remote file; we can drop
	 * the connection later if we change our minds.
	 */
	sb.st_size = -1;
	if (!o_stdout) {
		r = FUNC26(path, &sb);
		if (r == 0 && r_flag && FUNC0(sb.st_mode)) {
			url->offset = sb.st_size;
		} else if (r == -1 || !FUNC0(sb.st_mode)) {
			/*
			 * Whatever value sb.st_size has now is either
			 * wrong (if stat(2) failed) or irrelevant (if the
			 * path does not refer to a regular file)
			 */
			sb.st_size = -1;
		}
		if (r == -1 && errno != ENOENT) {
			FUNC40("%s: stat()", path);
			goto failure;
		}
	}

	/* start the transfer */
	if (timeout)
		FUNC1(timeout);
	f = FUNC11(url, &us, flags);
	if (timeout)
		FUNC1(0);
	if (sigalrm || sigint)
		goto signal;
	if (f == NULL) {
		FUNC40("%s: %s", URL, fetchLastErrString);
		if (i_flag && (FUNC31(url->scheme, SCHEME_HTTP) == 0 ||
		    FUNC31(url->scheme, SCHEME_HTTPS) == 0) &&
		    fetchLastErrCode == FETCH_OK &&
		    FUNC31(fetchLastErrString, "Not Modified") == 0) {
			/* HTTP Not Modified Response, return OK. */
			r = 0;
			goto done;
		} else
			goto failure;
	}
	if (sigint)
		goto signal;

	/* check that size is as expected */
	if (S_size) {
		if (us.size == -1) {
			FUNC40("%s: size unknown", URL);
		} else if (us.size != S_size) {
			FUNC40("%s: size mismatch: expected %jd, actual %jd",
			    URL, (intmax_t)S_size, (intmax_t)us.size);
			goto failure;
		}
	}

	/* symlink instead of copy */
	if (l_flag && FUNC31(url->scheme, "file") == 0 && !o_stdout) {
		if (FUNC36(url->doc, path) == -1) {
			FUNC39("%s: symlink()", path);
			goto failure;
		}
		goto success;
	}

	if (us.size == -1 && !o_stdout && v_level > 0)
		FUNC40("%s: size of remote file is not known", URL);
	if (v_level > 1) {
		if (sb.st_size != -1)
			FUNC15(stderr, "local size / mtime: %jd / %ld\n",
			    (intmax_t)sb.st_size, (long)sb.st_mtime);
		if (us.size != -1)
			FUNC15(stderr, "remote size / mtime: %jd / %ld\n",
			    (intmax_t)us.size, (long)us.mtime);
	}

	/* open output file */
	if (o_stdout) {
		/* output to stdout */
		of = stdout;
	} else if (r_flag && sb.st_size != -1) {
		/* resume mode, local file exists */
		if (!F_flag && us.mtime && sb.st_mtime != us.mtime) {
			/* no match! have to refetch */
			FUNC6(f);
			/* if precious, warn the user and give up */
			if (R_flag) {
				FUNC40("%s: local modification time "
				    "does not match remote", path);
				goto failure_keep;
			}
		} else if (url->offset > sb.st_size) {
			/* gap between what we asked for and what we got */
			FUNC40("%s: gap in resume mode", URL);
			FUNC6(of);
			of = NULL;
			/* picked up again later */
		} else if (us.size != -1) {
			if (us.size == sb.st_size)
				/* nothing to do */
				goto success;
			if (sb.st_size > us.size) {
				/* local file too long! */
				FUNC40("%s: local file (%jd bytes) is longer "
				    "than remote file (%jd bytes)", path,
				    (intmax_t)sb.st_size, (intmax_t)us.size);
				goto failure;
			}
			/* we got it, open local file */
			if ((of = FUNC14(path, "r+")) == NULL) {
				FUNC39("%s: fopen()", path);
				goto failure;
			}
			/* check that it didn't move under our feet */
			if (FUNC19(FUNC13(of), &nsb) == -1) {
				/* can't happen! */
				FUNC39("%s: fstat()", path);
				goto failure;
			}
			if (nsb.st_dev != sb.st_dev ||
			    nsb.st_ino != sb.st_ino ||
			    nsb.st_size != sb.st_size) {
				FUNC40("%s: file has changed", URL);
				FUNC6(of);
				of = NULL;
				sb = nsb;
				/* picked up again later */
			}
		}
		/* seek to where we left off */
		if (of != NULL && FUNC18(of, url->offset, SEEK_SET) != 0) {
			FUNC39("%s: fseeko()", path);
			FUNC6(of);
			of = NULL;
			/* picked up again later */
		}
	} else if (m_flag && sb.st_size != -1) {
		/* mirror mode, local file exists */
		if (sb.st_size == us.size && sb.st_mtime == us.mtime)
			goto success;
	}

	if (of == NULL) {
		/*
		 * We don't yet have an output file; either this is a
		 * vanilla run with no special flags, or the local and
		 * remote files didn't match.
		 */

		if (url->offset > 0) {
			/*
			 * We tried to restart a transfer, but for
			 * some reason gave up - so we have to restart
			 * from scratch if we want the whole file
			 */
			url->offset = 0;
			if ((f = FUNC11(url, &us, flags)) == NULL) {
				FUNC40("%s: %s", URL, fetchLastErrString);
				goto failure;
			}
			if (sigint)
				goto signal;
		}

		/* construct a temp file name */
		if (sb.st_size != -1 && FUNC0(sb.st_mode)) {
			if ((slash = FUNC35(path, '/')) == NULL)
				slash = path;
			else
				++slash;
			FUNC2(&tmppath, "%.*s.fetch.XXXXXX.%s",
			    (int)(slash - path), path, slash);
			if (tmppath != NULL) {
				if (FUNC21(tmppath, FUNC33(slash) + 1) == -1) {
					FUNC39("%s: mkstemps()", path);
					goto failure;
				}
				of = FUNC14(tmppath, "w");
				FUNC4(tmppath, sb.st_uid, sb.st_gid);
				FUNC3(tmppath, sb.st_mode & ALLPERMS);
			}
		}
		if (of == NULL)
			of = FUNC14(path, "w");
		if (of == NULL) {
			FUNC39("%s: open()", path);
			goto failure;
		}
	}
	count = url->offset;

	/* start the counter */
	FUNC28(&xs, path, us.size, count);

	sigalrm = siginfo = sigint = 0;

	/* suck in the data */
	FUNC24(f, NULL, _IOFBF, B_size);
	FUNC25(SIGINFO, sig_handler);
	while (!sigint) {
		if (us.size != -1 && us.size - count < B_size &&
		    us.size - count >= 0)
			size = us.size - count;
		else
			size = B_size;
		if (siginfo) {
			FUNC27(&xs);
			siginfo = 0;
		}

		if (size == 0)
			break;

		if ((readcnt = FUNC16(buf, 1, size, f)) < size) {
			if (FUNC7(f) && errno == EINTR && !sigint)
				FUNC5(f);
			else if (readcnt == 0)
				break;
		}

		FUNC29(&xs, count += readcnt);
		for (ptr = buf; readcnt > 0; ptr += wr, readcnt -= wr)
			if ((wr = FUNC20(ptr, 1, readcnt, of)) < readcnt) {
				if (FUNC7(of) && errno == EINTR && !sigint)
					FUNC5(of);
				else
					break;
			}
		if (readcnt != 0)
			break;
	}
	if (!sigalrm)
		sigalrm = FUNC7(f) && errno == ETIMEDOUT;
	FUNC25(SIGINFO, SIG_DFL);

	FUNC27(&xs);

	/*
	 * If the transfer timed out or was interrupted, we still want to
	 * set the mtime in case the file is not removed (-r or -R) and
	 * the user later restarts the transfer.
	 */
 signal:
	/* set mtime of local file */
	if (!n_flag && us.mtime && !o_stdout && of != NULL &&
	    (FUNC26(path, &sb) != -1) && sb.st_mode & S_IFREG) {
		struct timeval tv[2];

		FUNC12(of);
		tv[0].tv_sec = (long)(us.atime ? us.atime : us.mtime);
		tv[1].tv_sec = (long)us.mtime;
		tv[0].tv_usec = tv[1].tv_usec = 0;
		if (FUNC38(tmppath ? tmppath : path, tv))
			FUNC39("%s: utimes()", tmppath ? tmppath : path);
	}

	/* timed out or interrupted? */
	if (sigalrm)
		FUNC40("transfer timed out");
	if (sigint) {
		FUNC40("transfer interrupted");
		goto failure;
	}

	/* timeout / interrupt before connection completley established? */
	if (f == NULL)
		goto failure;

	if (!sigalrm) {
		/* check the status of our files */
		if (FUNC7(f))
			FUNC39("%s", URL);
		if (FUNC7(of))
			FUNC39("%s", path);
		if (FUNC7(f) || FUNC7(of))
			goto failure;
	}

	/* did the transfer complete normally? */
	if (us.size != -1 && count < us.size) {
		FUNC40("%s appears to be truncated: %jd/%jd bytes",
		    path, (intmax_t)count, (intmax_t)us.size);
		goto failure_keep;
	}

	/*
	 * If the transfer timed out and we didn't know how much to
	 * expect, assume the worst (i.e. we didn't get all of it)
	 */
	if (sigalrm && us.size == -1) {
		FUNC40("%s may be truncated", path);
		goto failure_keep;
	}

 success:
	r = 0;
	if (tmppath != NULL && FUNC23(tmppath, path) == -1) {
		FUNC39("%s: rename()", path);
		goto failure_keep;
	}
	goto done;
 failure:
	if (of && of != stdout && !R_flag && !r_flag)
		if (FUNC26(path, &sb) != -1 && (sb.st_mode & S_IFREG))
			FUNC37(tmppath ? tmppath : path);
	if (R_flag && tmppath != NULL && sb.st_size == -1)
		FUNC23(tmppath, path); /* ignore errors here */
 failure_keep:
	r = -1;
	goto done;
 done:
	if (f)
		FUNC6(f);
	if (of && of != stdout)
		FUNC6(of);
	if (url)
		FUNC8(url);
	if (tmppath != NULL)
		FUNC17(tmppath);
	return (r);
}