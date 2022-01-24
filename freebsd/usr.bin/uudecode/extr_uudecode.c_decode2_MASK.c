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
struct stat {int st_mode; } ;
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EISDIR ; 
 scalar_t__ ENOENT ; 
 int EOF ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int base64 ; 
 int FUNC0 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC5 (char*) ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  infile ; 
 int /*<<< orphan*/  infp ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 char* FUNC7 (char*,char*,size_t) ; 
 char* FUNC8 (char*,char*,size_t) ; 
 scalar_t__ oflag ; 
 int FUNC9 (char*,int,int) ; 
 char* outfile ; 
 int /*<<< orphan*/ * outfp ; 
 scalar_t__ pflag ; 
 void* FUNC10 (char*) ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/ * stdout ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 size_t FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(void)
{
	int flags, fd, mode;
	size_t n, m;
	char *p, *q;
	void *handle;
	struct passwd *pw;
	struct stat st;
	char buf[MAXPATHLEN + 1];

	base64 = 0;
	/* search for header line */
	for (;;) {
		if (FUNC2(buf, sizeof(buf), infp) == NULL)
			return (EOF);
		p = buf;
		if (FUNC14(p, "begin-base64 ", 13) == 0) {
			base64 = 1;
			p += 13;
		} else if (FUNC14(p, "begin ", 6) == 0)
			p += 6;
		else
			continue;
		/* p points to mode */
		q = FUNC11(p, ' ');
		if (q == NULL)
			continue;
		*q++ = '\0';
		/* q points to filename */
		n = FUNC13(q);
		while (n > 0 && (q[n-1] == '\n' || q[n-1] == '\r'))
			q[--n] = '\0';
		/* found valid header? */
		if (n > 0)
			break;
	}

	handle = FUNC10(p);
	if (handle == NULL) {
		FUNC20("%s: unable to parse file mode", infile);
		return (1);
	}
	mode = FUNC4(handle, 0) & 0666;
	FUNC3(handle);

	if (sflag) {
		/* don't strip, so try ~user/file expansion */
		p = NULL;
		pw = NULL;
		if (*q == '~')
			p = FUNC11(q, '/');
		if (p != NULL) {
			*p = '\0';
			pw = FUNC5(q + 1);
			*p = '/';
		}
		if (pw != NULL) {
			n = FUNC13(pw->pw_dir);
			if (buf + n > p) {
				/* make room */
				m = FUNC13(p);
				if (sizeof(buf) < n + m) {
					FUNC20("%s: bad output filename",
					    infile);
					return (1);
				}
				p = FUNC8(buf + n, p, m);
			}
			q = FUNC7(p - n, pw->pw_dir, n);
		}
	} else {
		/* strip down to leaf name */
		p = FUNC15(q, '/');
		if (p != NULL)
			q = p + 1;
	}
	if (!oflag)
		outfile = q;

	/* POSIX says "/dev/stdout" is a 'magic cookie' not a special file. */
	if (pflag || FUNC12(outfile, "/dev/stdout") == 0)
		outfp = stdout;
	else {
		flags = O_WRONLY | O_CREAT | O_EXCL;
		if (FUNC6(outfile, &st) == 0) {
			if (iflag) {
				FUNC19(EEXIST, "%s: %s", infile, outfile);
				return (0);
			}
			switch (st.st_mode & S_IFMT) {
			case S_IFREG:
			case S_IFLNK:
				/* avoid symlink attacks */
				if (FUNC16(outfile) == 0 || errno == ENOENT)
					break;
				FUNC18("%s: unlink %s", infile, outfile);
				return (1);
			case S_IFDIR:
				FUNC19(EISDIR, "%s: %s", infile, outfile);
				return (1);
			default:
				if (oflag) {
					/* trust command-line names */
					flags &= ~O_EXCL;
					break;
				}
				FUNC19(EEXIST, "%s: %s", infile, outfile);
				return (1);
			}
		} else if (errno != ENOENT) {
			FUNC18("%s: %s", infile, outfile);
			return (1);
		}
		if ((fd = FUNC9(outfile, flags, mode)) < 0 ||
		    (outfp = FUNC1(fd, "w")) == NULL) {
			FUNC18("%s: %s", infile, outfile);
			return (1);
		}
	}

	if (base64)
		return (FUNC0());
	else
		return (FUNC17());
}