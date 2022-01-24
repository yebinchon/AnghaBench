#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int wint_t ;
struct TYPE_7__ {int c_char; int c_column; int c_width; scalar_t__ c_set; } ;
struct TYPE_6__ {int l_line_len; int l_lsize; int l_max_col; int l_needs_sort; struct TYPE_6__* l_next; TYPE_2__* l_line; struct TYPE_6__* l_prev; } ;
typedef  TYPE_1__ LINE ;
typedef  scalar_t__ CSET ;
typedef  TYPE_2__ CHAR ;

/* Variables and functions */
#define  BS 139 
 int BUFFER_MARGIN ; 
#define  CR 138 
 scalar_t__ CS_ALTERNATE ; 
 scalar_t__ CS_NORMAL ; 
#define  ESC 137 
#define  FHLF 136 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  LC_CTYPE ; 
#define  NL 135 
 int /*<<< orphan*/  FUNC0 (int const) ; 
#define  RHLF 134 
#define  RLF 133 
#define  SI 132 
#define  SO 131 
#define  SPACE 130 
#define  TAB 129 
#define  VT 128 
 int WEOF ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 void* FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 
 int compress_spaces ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int fine ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int,char**,char*) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ last_set ; 
 TYPE_1__* lines ; 
 int max_bufd_lines ; 
 int nblank_lines ; 
 int no_backspaces ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int pass_unknown_seqs ; 
 TYPE_2__* FUNC16 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC18 (int /*<<< orphan*/ ,int,int,char const**) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 void* FUNC20 (int) ; 

int
FUNC21(int argc, char **argv)
{
	wint_t ch;
	CHAR *c;
	CSET cur_set;			/* current character set */
	LINE *l;			/* current line */
	int extra_lines;		/* # of lines above first line */
	int cur_col;			/* current column */
	int cur_line;			/* line number of current position */
	int max_line;			/* max value of cur_line */
	int this_line;			/* line l points to */
	int nflushd_lines;		/* number of lines that were flushed */
	int adjust, opt, warned, width;
	const char *errstr;

	(void)FUNC17(LC_CTYPE, "");

	if (FUNC4() == -1)
		FUNC6(1, "unable to limit stdio");

	if (FUNC3() < 0)
		FUNC6(1, "unable to enter capability mode");

	max_bufd_lines = 256;
	compress_spaces = 1;		/* compress spaces into tabs */
	while ((opt = FUNC12(argc, argv, "bfhl:px")) != -1)
		switch (opt) {
		case 'b':		/* do not output backspaces */
			no_backspaces = 1;
			break;
		case 'f':		/* allow half forward line feeds */
			fine = 1;
			break;
		case 'h':		/* compress spaces into tabs */
			compress_spaces = 1;
			break;
		case 'l':		/* buffered line count */
			max_bufd_lines = FUNC18(optarg, 1,
			    (INT_MAX - BUFFER_MARGIN) / 2, &errstr) * 2;
			if (errstr != NULL)
				FUNC7(1, "bad -l argument, %s: %s", errstr, 
					optarg);
			break;
		case 'p':		/* pass unknown control sequences */
			pass_unknown_seqs = 1;
			break;
		case 'x':		/* do not compress spaces into tabs */
			compress_spaces = 0;
			break;
		case '?':
		default:
			FUNC19();
		}

	if (optind != argc)
		FUNC19();

	adjust = cur_col = extra_lines = warned = 0;
	cur_line = max_line = nflushd_lines = this_line = 0;
	cur_set = last_set = CS_NORMAL;
	lines = l = FUNC2();

	while ((ch = FUNC13()) != WEOF) {
		if (!FUNC14(ch)) {
			switch (ch) {
			case BS:		/* can't go back further */
				if (cur_col == 0)
					continue;
				--cur_col;
				continue;
			case CR:
				cur_col = 0;
				continue;
			case ESC:		/* just ignore EOF */
				switch(FUNC13()) {
				/*
				 * In the input stream, accept both the
				 * XPG5 sequences ESC-digit and the
				 * traditional BSD sequences ESC-ctrl.
				 */
				case '\007':
					/* FALLTHROUGH */
				case RLF:
					FUNC1(&cur_line, -2);
					break;
				case '\010':
					/* FALLTHROUGH */
				case RHLF:
					FUNC1(&cur_line, -1);
					break;
				case '\011':
					/* FALLTHROUGH */
				case FHLF:
					FUNC1(&cur_line, 1);
					if (cur_line > max_line)
						max_line = cur_line;
				}
				continue;
			case NL:
				FUNC1(&cur_line, 2);
				if (cur_line > max_line)
					max_line = cur_line;
				cur_col = 0;
				continue;
			case SPACE:
				++cur_col;
				continue;
			case SI:
				cur_set = CS_NORMAL;
				continue;
			case SO:
				cur_set = CS_ALTERNATE;
				continue;
			case TAB:		/* adjust column */
				cur_col |= 7;
				++cur_col;
				continue;
			case VT:
				FUNC1(&cur_line, -2);
				continue;
			}
			if (FUNC15(ch)) {
				if ((width = FUNC20(ch)) > 0)
					cur_col += width;
				continue;
			}
			if (!pass_unknown_seqs)
				continue;
		}

		/* Must stuff ch in a line - are we at the right one? */
		if (cur_line + adjust != this_line) {
			LINE *lnew;

			/* round up to next line */
			adjust = !fine && (cur_line & 1);

			if (cur_line + adjust < this_line) {
				while (cur_line + adjust < this_line &&
				    l->l_prev != NULL) {
					l = l->l_prev;
					this_line--;
				}
				if (cur_line + adjust < this_line) {
					if (nflushd_lines == 0) {
						/*
						 * Allow backup past first
						 * line if nothing has been
						 * flushed yet.
						 */
						while (cur_line + adjust
						    < this_line) {
							lnew = FUNC2();
							l->l_prev = lnew;
							lnew->l_next = l;
							l = lines = lnew;
							extra_lines++;
							this_line--;
						}
					} else {
						if (!warned++)
							FUNC5(cur_line);
						cur_line = this_line - adjust;
					}
				}
			} else {
				/* may need to allocate here */
				while (cur_line + adjust > this_line) {
					if (l->l_next == NULL) {
						l->l_next = FUNC2();
						l->l_next->l_prev = l;
					}
					l = l->l_next;
					this_line++;
				}
			}
			if (this_line > nflushd_lines &&
			    this_line - nflushd_lines >=
			    max_bufd_lines + BUFFER_MARGIN) {
				if (extra_lines) {
					FUNC11(extra_lines);
					extra_lines = 0;
				}
				FUNC11(this_line - nflushd_lines -
				    max_bufd_lines);
				nflushd_lines = this_line - max_bufd_lines;
			}
		}
		/* grow line's buffer? */
		if (l->l_line_len + 1 >= l->l_lsize) {
			int need;

			need = l->l_lsize ? l->l_lsize * 2 : 90;
			if ((l->l_line = FUNC16(l->l_line,
			    (unsigned)need * sizeof(CHAR))) == NULL)
				FUNC6(1, NULL);
			l->l_lsize = need;
		}
		c = &l->l_line[l->l_line_len++];
		c->c_char = ch;
		c->c_set = cur_set;
		c->c_column = cur_col;
		c->c_width = FUNC20(ch);
		/*
		 * If things are put in out of order, they will need sorting
		 * when it is flushed.
		 */
		if (cur_col < l->l_max_col)
			l->l_needs_sort = 1;
		else
			l->l_max_col = cur_col;
		if (c->c_width > 0)
			cur_col += c->c_width;
	}
	if (FUNC9(stdin))
		FUNC6(1, NULL);
	if (extra_lines)
		FUNC11(extra_lines);

	/* goto the last line that had a character on it */
	for (; l->l_next; l = l->l_next)
		this_line++;
	FUNC11(this_line - nflushd_lines + 1);

	/* make sure we leave things in a sane state */
	if (last_set != CS_NORMAL)
		FUNC0(SI);

	/* flush out the last few blank lines */
	if (max_line > this_line)
		nblank_lines = max_line - this_line;
	if (max_line & 1)
		nblank_lines++;
	FUNC10();
	FUNC8(0);
}