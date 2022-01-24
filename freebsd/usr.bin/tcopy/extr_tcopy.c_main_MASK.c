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
typedef  int /*<<< orphan*/  sig_t ;
typedef  int intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  MTWEOF ; 
 int NOCOUNT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 char* _PATH_DEFTAPE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int filen ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int,char**,char*) ; 
 char* FUNC7 (int) ; 
 int guesslen ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ lastrec ; 
 int maxblk ; 
 int /*<<< orphan*/  msg ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC9 (int,char*,int) ; 
 scalar_t__ record ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ size ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ tsize ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 

int
FUNC18(int argc, char *argv[])
{
	int lastnread, nread, nw, inp, outp;
	enum {READ, VERIFY, COPY, COPYVERIFY} op = READ;
	sig_t oldsig;
	int ch, needeof;
	char *buff;
	const char *inf;

	msg = stdout;
	guesslen = 1;
	outp = -1;
	while ((ch = FUNC6(argc, argv, "cs:vx")) != -1)
		switch((char)ch) {
		case 'c':
			op = COPYVERIFY;
			break;
		case 's':
			maxblk = FUNC0(optarg);
			if (maxblk <= 0) {
				FUNC15("illegal block size");
				FUNC12();
			}
			guesslen = 0;
			break;
		case 'v':
			op = VERIFY;
			break;
		case 'x':
			msg = stderr;
			break;
		case '?':
		default:
			FUNC12();
		}
	argc -= optind;
	argv += optind;

	switch(argc) {
	case 0:
		if (op != READ)
			FUNC12();
		inf = _PATH_DEFTAPE;
		break;
	case 1:
		if (op != READ)
			FUNC12();
		inf = argv[0];
		break;
	case 2:
		if (op == READ)
			op = COPY;
		inf = argv[0];
		if ((outp = FUNC8(argv[1], op == VERIFY ? O_RDONLY :
		    op == COPY ? O_WRONLY : O_RDWR, DEFFILEMODE)) < 0)
			FUNC1(3, "%s", argv[1]);
		break;
	default:
		FUNC12();
	}

	if ((inp = FUNC8(inf, O_RDONLY, 0)) < 0)
		FUNC1(1, "%s", inf);

	buff = FUNC7(maxblk);

	if (op == VERIFY) {
		FUNC13(inp, outp, buff);
		FUNC3(0);
	}

	if ((oldsig = FUNC11(SIGINT, SIG_IGN)) != SIG_IGN)
		(void) FUNC11(SIGINT, intr);

	needeof = 0;
	for (lastnread = NOCOUNT;;) {
		if ((nread = FUNC9(inp, buff, maxblk)) == -1) {
			while (errno == EINVAL && (maxblk -= 1024)) {
				nread = FUNC9(inp, buff, maxblk);
				if (nread >= 0)
					goto r1;
			}
			FUNC1(1, "read error, file %d, record %ju", filen, (intmax_t)record);
		} else if (nread != lastnread) {
			if (lastnread != 0 && lastnread != NOCOUNT) {
				if (lastrec == 0 && nread == 0)
					FUNC5(msg, "%jd records\n", (intmax_t)record);
				else if (record - lastrec > 1)
					FUNC5(msg, "records %jd to %jd\n",
					    (intmax_t)lastrec, (intmax_t)record);
				else
					FUNC5(msg, "record %jd\n", (intmax_t)lastrec);
			}
			if (nread != 0)
				FUNC5(msg, "file %d: block size %d: ",
				    filen, nread);
			(void) FUNC4(stdout);
			lastrec = record;
		}
r1:		guesslen = 0;
		if (nread > 0) {
			if (op == COPY || op == COPYVERIFY) {
				if (needeof) {
					FUNC17(outp, MTWEOF);
					needeof = 0;
				}
				nw = FUNC16(outp, buff, nread);
				if (nw != nread) {
					if (nw == -1) {
						FUNC14("write error, file %d, record %ju", filen,
						    (intmax_t)record);
					} else {
						FUNC15("write error, file %d, record %ju", filen,
						    (intmax_t)record);
						FUNC15("write (%d) != read (%d)", nw, nread);
					}
					FUNC2(5, "copy aborted");
				}
			}
			size += nread;
			record++;
		} else {
			if (lastnread <= 0 && lastnread != NOCOUNT) {
				FUNC5(msg, "eot\n");
				break;
			}
			FUNC5(msg,
			    "file %d: eof after %jd records: %jd bytes\n",
			    filen, (intmax_t)record, (intmax_t)size);
			needeof = 1;
			filen++;
			tsize += size;
			size = record = lastrec = 0;
			lastnread = 0;
		}
		lastnread = nread;
	}
	FUNC5(msg, "total length: %jd bytes\n", (intmax_t)tsize);
	(void)FUNC11(SIGINT, oldsig);
	if (op == COPY || op == COPYVERIFY) {
		FUNC17(outp, MTWEOF);
		FUNC17(outp, MTWEOF);
		if (op == COPYVERIFY) {
			FUNC10(outp);
			FUNC10(inp);
			FUNC13(inp, outp, buff);
		}
	}
	FUNC3(0);
}