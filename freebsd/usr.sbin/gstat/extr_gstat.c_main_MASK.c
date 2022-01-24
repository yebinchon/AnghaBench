#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ts ;
struct timespec {double tv_sec; int tv_nsec; } ;
struct gprovider {char* lg_name; TYPE_3__* lg_provider; TYPE_2__* lg_geom; } ;
struct gmesh {int dummy; } ;
struct gident {scalar_t__ lg_what; struct gprovider* lg_ptr; } ;
struct gconsumer {char* lg_name; TYPE_3__* lg_provider; TYPE_2__* lg_geom; } ;
struct devstat {scalar_t__ sequence0; scalar_t__ sequence1; int /*<<< orphan*/ * id; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  pf_s ;
typedef  int /*<<< orphan*/  g_name ;
typedef  int /*<<< orphan*/  f_s ;
struct TYPE_6__ {char* lg_name; } ;
struct TYPE_5__ {int lg_rank; char* lg_name; TYPE_1__* lg_class; } ;
struct TYPE_4__ {char* lg_name; } ;
typedef  int /*<<< orphan*/  History ;
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_GREEN ; 
 int /*<<< orphan*/  COLOR_MAGENTA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  DSM_BUSY_PCT ; 
 int /*<<< orphan*/  DSM_KB_PER_TRANSFER_FREE ; 
 int /*<<< orphan*/  DSM_KB_PER_TRANSFER_READ ; 
 int /*<<< orphan*/  DSM_KB_PER_TRANSFER_WRITE ; 
 int /*<<< orphan*/  DSM_MB_PER_SECOND_FREE ; 
 int /*<<< orphan*/  DSM_MB_PER_SECOND_READ ; 
 int /*<<< orphan*/  DSM_MB_PER_SECOND_WRITE ; 
 int /*<<< orphan*/  DSM_MS_PER_TRANSACTION_FREE ; 
 int /*<<< orphan*/  DSM_MS_PER_TRANSACTION_OTHER ; 
 int /*<<< orphan*/  DSM_MS_PER_TRANSACTION_READ ; 
 int /*<<< orphan*/  DSM_MS_PER_TRANSACTION_WRITE ; 
 int /*<<< orphan*/  DSM_NONE ; 
 int /*<<< orphan*/  DSM_QUEUE_LENGTH ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND_FREE ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND_OTHER ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND_READ ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND_WRITE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  EL_SIGNAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int ERR ; 
 int /*<<< orphan*/  EX_OK ; 
 int EX_SOFTWARE ; 
 int EX_USAGE ; 
 int /*<<< orphan*/  FALSE ; 
 long double HIGH_PCT_BUSY_THRESH ; 
 int /*<<< orphan*/  H_ENTER ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 scalar_t__ ISCONSUMER ; 
 scalar_t__ ISPROVIDER ; 
 long double MEDIUM_PCT_BUSY_THRESH ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct devstat*,struct devstat*,double,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int el_prompt ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int flag_B ; 
 int flag_C ; 
 int flag_I ; 
 int flag_a ; 
 int flag_b ; 
 int flag_c ; 
 int flag_d ; 
 int flag_o ; 
 int flag_p ; 
 int flag_s ; 
 int /*<<< orphan*/  FUNC19 (struct gmesh*) ; 
 int FUNC20 (struct gmesh*) ; 
 struct gident* FUNC21 (struct gmesh*,int /*<<< orphan*/ *) ; 
 int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (void*) ; 
 void* FUNC24 () ; 
 struct devstat* FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (void*) ; 
 int /*<<< orphan*/  FUNC27 (void*,struct timespec*) ; 
 int FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC30 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (double*) ; 
 int /*<<< orphan*/  FUNC40 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 () ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,short*,short*) ; 
 int /*<<< orphan*/  FUNC45 (char*) ; 
 int /*<<< orphan*/  FUNC46 () ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int) ; 
 int /*<<< orphan*/  FUNC50 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC51 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  stdscr ; 
 char* FUNC52 (char*,char) ; 
 int /*<<< orphan*/  FUNC53 (char*,char*) ; 
 int /*<<< orphan*/  FUNC54 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (char*,char const*,int) ; 
 int FUNC56 (char*) ; 
 int FUNC57 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC58 () ; 
 int /*<<< orphan*/  FUNC59 () ; 
 int /*<<< orphan*/  FUNC60 (int) ; 

int
FUNC61(int argc, char **argv)
{
	int error, i, quit;
	int curx, cury, maxx, maxy, line_len, loop, max_flen, head_printed;
	struct devstat *gsp, *gsq;
	void *sp, *sq;
	double dt;
	struct timespec tp, tq;
	struct gmesh gmp;
	struct gprovider *pp;
	struct gconsumer *cp;
	struct gident *gid;
	regex_t f_re, tmp_f_re;
	short cf, cb;
	char *p;
	char f_s[100], pf_s[100], tmp_f_s[100];
	char ts[100], g_name[4096];
	const char *line;
	long double ld[16];
	uint64_t u64;
	EditLine *el;
	History *hist;
	HistEvent hist_ev;

	hist = NULL;
	el = NULL;
	maxx = -1;
	curx = -1;
	loop = 1;
	/* Turn on batch mode if output is not tty. */
	if (!FUNC37(FUNC18(stdout)))
		flag_b = 1;

	f_s[0] = '\0';
	while ((i = FUNC30(argc, argv, "abBdcCf:I:ops")) != -1) {
		switch (i) {
		case 'a':
			flag_a = 1;
			break;
		case 'b':
			flag_b = 1;
			break;
		case 'B':
			flag_B = 1;
			flag_b = 1;
			break;
		case 'c':
			flag_c = 1;
			break;
		case 'C':
			flag_C = 1;
			/* csv out implies repeating batch mode */
			flag_b = 1;
			flag_B = 1;
			head_printed = 0;
			break;
		case 'd':
			flag_d = 1;
			break;
		case 'f':
			if (FUNC56(optarg) > sizeof(f_s) - 1)
				FUNC15(EX_USAGE, "Filter string too long");
			if (FUNC47(&f_re, optarg, REG_EXTENDED) != 0)
				FUNC15(EX_USAGE,
				    "Invalid filter - see re_format(7)");
			FUNC55(f_s, optarg, sizeof(f_s));
			break;
		case 'o':
			flag_o = 1;
			break;
		case 'I':
			p = NULL;
			i = FUNC57(optarg, &p, 0);
			if (p == optarg || errno == EINVAL ||
			    errno == ERANGE) {
				FUNC15(1, "Invalid argument to -I");
			} else if (!FUNC53(p, "s"))
				i *= 1000000;
			else if (!FUNC53(p, "ms"))
				i *= 1000;
			else if (!FUNC53(p, "us"))
				i *= 1;
			flag_I = i;
			break;
		case 'p':
			flag_p = 1;
			break;
		case 's':
			flag_s = 1;
			break;
		case '?':
		default:
			FUNC58();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc != 0)
		FUNC58();

	i = FUNC20(&gmp);
	if (i != 0)
		FUNC14(1, "geom_gettree = %d", i);
	error = FUNC22();
	if (error)
		FUNC14(1, "geom_stats_open()");
	sq = NULL;
	sq = FUNC24();
	if (sq == NULL)
		FUNC14(1, "geom_stats_snapshot()");
	if (!flag_b) {
		/* Setup libedit */
		hist = FUNC33();
		if (hist == NULL)
			FUNC14(EX_SOFTWARE, "history_init()");
		FUNC32(hist, &hist_ev, H_SETSIZE, 100);
		el = FUNC11("gstat", stdin, stdout, stderr);
		if (el == NULL)
			FUNC14(EX_SOFTWARE, "el_init");
		FUNC12(el, EL_EDITOR, "emacs");
		FUNC12(el, EL_SIGNAL, 1);
		FUNC12(el, EL_HIST, history, hist);
		FUNC12(el, EL_PROMPT, el_prompt);
		if (f_s[0] != '\0')
			FUNC32(hist, &hist_ev, H_ENTER, f_s);
		/* Setup curses */
		FUNC35();
		FUNC51();
		FUNC59();
		FUNC44(0, &cf, &cb);
		FUNC34(1, COLOR_GREEN, cb);
		FUNC34(2, COLOR_MAGENTA, cb);
		FUNC34(3, COLOR_RED, cb);
		FUNC4();
		FUNC42();
		FUNC43();
		FUNC41(stdscr, 1);
		FUNC36(stdscr, FALSE);
		FUNC38(stdscr, TRUE);
	}
	FUNC27(sq, &tq);
	for (quit = 0; !quit;) {
		sp = FUNC24();
		if (sp == NULL)
			FUNC14(1, "geom_stats_snapshot()");
		FUNC27(sp, &tp);
		dt = tp.tv_sec - tq.tv_sec;
		dt += (tp.tv_nsec - tq.tv_nsec) * 1e-9;
		tq = tp;
		if (flag_C) { /* set timestamp string */
			(void)FUNC54(ts,sizeof(ts),
					"%F %T",FUNC39(&tq.tv_sec));
			(void)FUNC50(ts,sizeof(ts),
					"%s.%.9ld",ts,tq.tv_nsec);
		}
	
		FUNC26(sp);
		FUNC26(sq);
		if (!flag_b)
			FUNC40(0,0);
		if (!flag_C)
			FUNC1("dT: %5.3fs  w: %.3fs", dt,
					(float)flag_I / 1000000);
		if (!flag_C && f_s[0] != '\0') {
			FUNC1("  filter: ");
			if (!flag_b) {
				FUNC31(stdscr, cury, curx);
				FUNC29(stdscr, maxy, maxx);
			}
			FUNC55(pf_s, f_s, sizeof(pf_s));
			max_flen = maxx - curx - 1;
			if ((int)FUNC56(f_s) > max_flen && max_flen >= 0) {
				if (max_flen > 3)
					pf_s[max_flen - 3] = '.';
				if (max_flen > 2)
					pf_s[max_flen - 2] = '.';
				if (max_flen > 1)
					pf_s[max_flen - 1] = '.';
				pf_s[max_flen] = '\0';
			}
			FUNC1("%s", pf_s);
		}
		if (!flag_C) {
			FUNC1("\n");
			FUNC1(" L(q)  ops/s   ");
			if (flag_s) {
				FUNC1(" r/s     kB   kBps   ms/r   ");
				FUNC1(" w/s     kB   kBps   ms/w   ");
			}
			else {
				FUNC1(" r/s   kBps   ms/r   ");
				FUNC1(" w/s   kBps   ms/w   ");
			}
			if (flag_d) {
				if (flag_s) {
					FUNC1(" d/s     kB   kBps");
					FUNC1("   ms/d   ");
				} else
					FUNC1(" d/s   kBps   ms/d   ");
			}
			if (flag_o)
				FUNC1(" o/s   ms/o   ");
			FUNC1("%%busy Name\n");
		} else if (flag_C && !head_printed) {
			FUNC1("timestamp,name,q-depth,total_ops/s");
			if (flag_s) {
				FUNC1(",read/s,read_sz-KiB");
				FUNC1(",read-KiB/s,ms/read");
				FUNC1(",write/s,write_sz-KiB");
				FUNC1(",write-KiB/s,ms/write");
			} else {
				FUNC1(",read/s,read-KiB/s,ms/read");
				FUNC1(",write/s,write-KiB/s,ms/write");
			}
			if (flag_d) {
				if (flag_s) {
					FUNC1(",delete/s,delete-sz-KiB");
					FUNC1(",delete-KiB/s,ms/delete");
				} else {
					FUNC1(",delete/s,delete-KiB/s");
					FUNC1(",ms/delete");
				}
			}
			if (flag_o)
				FUNC1(",other/s,ms/other");
			FUNC1(",%%busy\n");
			head_printed = 1;
		}
		for (;;) {
			gsp = FUNC25(sp);
			gsq = FUNC25(sq);
			if (gsp == NULL || gsq == NULL)
				break;
			if (gsp->id == NULL)
				continue;
			gid = FUNC21(&gmp, gsp->id);
			if (gid == NULL) {
				FUNC19(&gmp);
				i = FUNC20(&gmp);
				if (i != 0)
					FUNC14(1, "geom_gettree = %d", i);
				gid = FUNC21(&gmp, gsp->id);
			}
			if (gid == NULL)
				continue;
			if (gid->lg_what == ISCONSUMER && !flag_c)
				continue;
			if (flag_p && gid->lg_what == ISPROVIDER &&
			   ((struct gprovider *)
			    (gid->lg_ptr))->lg_geom->lg_rank != 1)
				continue;
			/* Do not print past end of window */
			if (!flag_b) {
				FUNC31(stdscr, cury, curx);
				if (curx > 0)
					continue;
			}
			if ((gid->lg_what == ISPROVIDER
			    || gid->lg_what == ISCONSUMER) && f_s[0] != '\0') {
				pp = gid->lg_ptr;
				if ((FUNC48(&f_re, pp->lg_name, 0, NULL, 0)
				     != 0))
				  continue;
			}
			if (gsp->sequence0 != gsp->sequence1) {
				/* 
				 * it is ok to skip entire line silently
				 * for CSV output
				 */
				if (!flag_C)
					FUNC1("*\n");
				continue;
			}
			FUNC8(gsp, gsq, dt, 
			    DSM_QUEUE_LENGTH, &u64,
			    DSM_TRANSFERS_PER_SECOND, &ld[0],

			    DSM_TRANSFERS_PER_SECOND_READ, &ld[1],
			    DSM_MB_PER_SECOND_READ, &ld[2],
			    DSM_MS_PER_TRANSACTION_READ, &ld[3],

			    DSM_TRANSFERS_PER_SECOND_WRITE, &ld[4],
			    DSM_MB_PER_SECOND_WRITE, &ld[5],
			    DSM_MS_PER_TRANSACTION_WRITE, &ld[6],

			    DSM_BUSY_PCT, &ld[7],

			    DSM_TRANSFERS_PER_SECOND_FREE, &ld[8],
			    DSM_MB_PER_SECOND_FREE, &ld[9],
			    DSM_MS_PER_TRANSACTION_FREE, &ld[10],

			    DSM_TRANSFERS_PER_SECOND_OTHER, &ld[11],
			    DSM_MS_PER_TRANSACTION_OTHER, &ld[12],

			    DSM_KB_PER_TRANSFER_READ, &ld[13],
			    DSM_KB_PER_TRANSFER_WRITE, &ld[14],
			    DSM_KB_PER_TRANSFER_FREE, &ld[15],

			    DSM_NONE);

			if (flag_a && ld[7] < 0.1) {
				*gsq = *gsp;
				continue;
			}

			/* store name for geom device */
			if (gid == NULL) {
				(void)FUNC50(g_name, sizeof(g_name), "??");
			} else if (gid->lg_what == ISPROVIDER) {
				pp = gid->lg_ptr;
				(void)FUNC50(g_name, sizeof(g_name), "%s",
						pp->lg_name);
			} else if (gid->lg_what == ISCONSUMER) {
				cp = gid->lg_ptr;
				(void)FUNC50(g_name, sizeof(g_name),
					"%s/%s/%s",
					cp->lg_geom->lg_class->lg_name,
				   	cp->lg_geom->lg_name,
				    	cp->lg_provider->lg_name);
			}
	
			if (flag_C) {
				FUNC1("%s", ts); /* timestamp */
				FUNC1(",%s", g_name); /* print name */
				FUNC1(",%ju", (uintmax_t)u64);
				FUNC1(",%.0f", (double)ld[0]);
				FUNC1(",%.0f", (double)ld[1]);
				if (flag_s)
					FUNC1(",%.0f", (double)ld[13]);
				FUNC1(",%.0f", (double)ld[2] * 1024);
				if (ld[3] > 1e3) 
					FUNC1(",%.0f", (double)ld[3]);
				else
					FUNC1(",%.1f", (double)ld[3]);
				FUNC1(",%.0f", (double)ld[4]);
				if (flag_s)
					FUNC1(",%.0f", (double)ld[14]);
				FUNC1(",%.0f", (double)ld[5] * 1024);
				if (ld[6] > 1e3) 
					FUNC1(",%.0f", (double)ld[6]);
				else
					FUNC1(",%.1f", (double)ld[6]);

				if (flag_d) {
					FUNC1(",%.0f", (double)ld[8]);
					if (flag_s)
						FUNC1(",%.0f",
								(double)ld[15]);
					FUNC1(",%.0f", (double)ld[9] * 1024);
					if (ld[10] > 1e3) 
						FUNC1(",%.0f",
								(double)ld[10]);
					else
						FUNC1(",%.1f",
								(double)ld[10]);
				}

				if (flag_o) {
					FUNC1(",%.0f", (double)ld[11]);
					if (ld[12] > 1e3) 
						FUNC1(",%.0f",
								(double)ld[12]);
					else
						FUNC1(",%.1f", 
								(double)ld[12]);
				}
				FUNC1(",%.1lf", (double)ld[7]);
			} else {
				FUNC1(" %4ju", (uintmax_t)u64);
				FUNC1(" %6.0f", (double)ld[0]);
				FUNC1(" %6.0f", (double)ld[1]);
				if (flag_s)
					FUNC1(" %6.0f", (double)ld[13]);
				FUNC1(" %6.0f", (double)ld[2] * 1024);
				if (ld[3] > 1e3) 
					FUNC1(" %6.0f", (double)ld[3]);
				else
					FUNC1(" %6.1f", (double)ld[3]);
				FUNC1(" %6.0f", (double)ld[4]);
				if (flag_s)
					FUNC1(" %6.0f", (double)ld[14]);
				FUNC1(" %6.0f", (double)ld[5] * 1024);
				if (ld[6] > 1e3) 
					FUNC1(" %6.0f", (double)ld[6]);
				else
					FUNC1(" %6.1f", (double)ld[6]);

				if (flag_d) {
					FUNC1(" %6.0f", (double)ld[8]);
					if (flag_s)
						FUNC1(" %6.0f", 
								(double)ld[15]);
					FUNC1(" %6.0f", 
							(double)ld[9] * 1024);
					if (ld[10] > 1e3) 
						FUNC1(" %6.0f",
								(double)ld[10]);
					else
						FUNC1(" %6.1f",
								(double)ld[10]);
				}

				if (flag_o) {
					FUNC1(" %6.0f", (double)ld[11]);
					if (ld[12] > 1e3) 
						FUNC1(" %6.0f",
								(double)ld[12]);
					else
						FUNC1(" %6.1f", 
								(double)ld[12]);
				}

				if (ld[7] > HIGH_PCT_BUSY_THRESH)
					i = 3;
				else if (ld[7] > MEDIUM_PCT_BUSY_THRESH)
					i = 2;
				else 
					i = 1;
				if (!flag_b)
					FUNC3(FUNC0(i));
				FUNC1(" %6.1lf", (double)ld[7]);
				if (!flag_b) {
					FUNC2(FUNC0(i));
					FUNC1("|");
				} else
					FUNC1(" ");
				FUNC1(" %s", g_name);
				if (!flag_b)
					FUNC7();
			}
			FUNC1("\n");
			*gsq = *gsp;
		}
		FUNC23(sp);
		if (flag_b) {
			/* We loop extra to make sure we get the information. */
			if (!loop)
				break;
			if (!flag_B)
				loop = 0;
			else
				FUNC17(stdout);
			FUNC60(flag_I);
			continue;
		}
		FUNC31(stdscr, cury, curx);
		FUNC29(stdscr, maxy, maxx);
		FUNC6();
		if (maxy - 1 <= cury)
			FUNC40(maxy - 1, 0);
		FUNC46();
		FUNC60(flag_I);
		while((i = FUNC28()) != ERR) {
			switch (i) {
			case '>':
				flag_I *= 2;
				break;
			case '<':
				flag_I /= 2;
				if (flag_I < 1000)
					flag_I = 1000;
				break;
			case 'c':
				flag_c = !flag_c;
				break;
			case 'f':
				FUNC40(0,0);
				FUNC7();
				FUNC46();
				line = FUNC10(el, &line_len);
				if (line == NULL)
					FUNC14(1, "el_gets");
				if (line_len > 1)
					FUNC32(hist, &hist_ev, H_ENTER, line);
				FUNC55(tmp_f_s, line, sizeof(f_s));
				if ((p = FUNC52(tmp_f_s, '\n')) != NULL)
					*p = '\0';
				/*
				 * Fix the terminal.  We messed up
				 * curses idea of the screen by using
				 * libedit.
				 */
				FUNC5();
				FUNC46();
				FUNC4();
				FUNC42();
				FUNC43();
				if (FUNC47(&tmp_f_re, tmp_f_s, REG_EXTENDED)
				    != 0) {
					FUNC40(0, 0);
					FUNC45("Invalid filter");
					FUNC46();
					FUNC49(1);
				} else {
					FUNC55(f_s, tmp_f_s, sizeof(f_s));
					f_re = tmp_f_re;
				}
				break;
			case 'F':
				f_s[0] = '\0';
				break;
			case 'q':
				quit = 1;
				break;
			default:
				break;
			}
		}
	}

	if (!flag_b) {
		FUNC9(el);
		FUNC13();
	}
	FUNC16(EX_OK);
}