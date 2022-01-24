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
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;
struct block {int* mask; int* data; scalar_t__ length; } ;
typedef  int /*<<< orphan*/  cmdbuf ;
typedef  int /*<<< orphan*/  block_head_t ;

/* Variables and functions */
 int BLOCK_ADD ; 
 int BLOCK_MASK ; 
 scalar_t__ BLOCK_SIZE ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct block*,int /*<<< orphan*/ ) ; 
 struct block* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char* opt_diff_tool ; 
 scalar_t__ opt_verbose ; 
 char* optarg ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigpipe ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17(int argc, char **argv)
{
	block_head_t diff_head;
	block_head_t diff_a_head;
	block_head_t diff_b_head;
	block_head_t indent_in_head;
	block_head_t indent_out_head;
	struct block *p1 = NULL;
	struct block *p2 = NULL;
	uint64_t size;
	uint64_t x;
	uint64_t y1 = 0;
	uint64_t y2 = 0;
	int recurse = 0;
	int inside_string = 0;
	int escape_char = 0;
	int do_parse = 0;
	char cmdbuf[256];
	uint16_t ch;
	uint16_t chn;
	int c;
	int retval = 0;

	FUNC13(SIGPIPE, &sigpipe);

	cmdbuf[0] = 0;

	while ((c = FUNC8(argc, argv, "dDvg:s:c:ht:")) != -1) {
		switch (c) {
		case 'v':
			opt_verbose++;
			break;
		case 't':
			opt_diff_tool = optarg;
			break;
		case 'g':
			FUNC15(cmdbuf, sizeof(cmdbuf), "git show -U1000000 %s", optarg);
			break;
		case 'd':
			FUNC15(cmdbuf, sizeof(cmdbuf), "git diff -U1000000");
			break;
		case 'D':
			FUNC15(cmdbuf, sizeof(cmdbuf), "svn diff --diff-cmd=diff -x -U1000000");
			break;
		case 's':
			FUNC15(cmdbuf, sizeof(cmdbuf), "svn diff --diff-cmd=diff -x -U1000000 -r %s", optarg);
			break;
		case 'c':
			FUNC15(cmdbuf, sizeof(cmdbuf), "%s", optarg);
			break;
		default:
			FUNC16();
		}
	}
	if (cmdbuf[0] == 0)
		FUNC16();

	FUNC3(NULL, &diff_head, cmdbuf);

	FUNC0(&diff_a_head);
	FUNC0(&diff_b_head);

	size = FUNC14(&diff_head);
	p1 = FUNC2();
	y1 = 0;
	p2 = FUNC2();
	y2 = 0;

	for (x = 0; x < size;) {
		ch = FUNC10(&diff_head, x);
		switch (ch & 0xFF) {
		case '+':
			if (ch == FUNC10(&diff_head, x + 1) &&
			    ch == FUNC10(&diff_head, x + 2) &&
			    ' ' == (FUNC10(&diff_head, x + 3) & 0xFF))
				goto parse_filename;
			if (do_parse == 0)
				break;
			for (x++; x != size; x++) {
				ch = FUNC10(&diff_head, x);
				p1->mask[y1] = BLOCK_ADD >> 8;
				p1->data[y1++] = ch;
				if (y1 == BLOCK_SIZE) {
					FUNC1(&diff_a_head, p1, entry);
					p1 = FUNC2();
					y1 = 0;
				}
				if ((ch & 0xFF) == '\n')
					break;
			}
			break;
		case '-':
			if (ch == FUNC10(&diff_head, x + 1) &&
			    ch == FUNC10(&diff_head, x + 2) &&
			    ' ' == (FUNC10(&diff_head, x + 3) & 0xFF))
				goto parse_filename;
			if (do_parse == 0)
				break;
			for (x++; x != size; x++) {
				ch = FUNC10(&diff_head, x);
				p2->data[y2++] = ch;
				if (y2 == BLOCK_SIZE) {
					FUNC1(&diff_b_head, p2, entry);
					p2 = FUNC2();
					y2 = 0;
				}
				if ((ch & 0xFF) == '\n')
					break;
			}
			break;
		case ' ':
			if (do_parse == 0)
				break;
			for (x++; x != size; x++) {
				ch = FUNC10(&diff_head, x);
				p1->data[y1++] = ch;
				if (y1 == BLOCK_SIZE) {
					FUNC1(&diff_a_head, p1, entry);
					p1 = FUNC2();
					y1 = 0;
				}
				p2->data[y2++] = ch;
				if (y2 == BLOCK_SIZE) {
					FUNC1(&diff_b_head, p2, entry);
					p2 = FUNC2();
					y2 = 0;
				}
				if ((ch & 0xFF) == '\n')
					break;
			}
			break;
	parse_filename:
			for (x += 3; x != size; x++) {
				ch = FUNC10(&diff_head, x);
				chn = FUNC10(&diff_head, x + 1);
				if ((ch & 0xFF) == '.') {
					/* only accept .c and .h files */
					do_parse = ((chn & 0xFF) == 'c' || (chn & 0xFF) == 'h');
				}
				if ((ch & 0xFF) == '\n')
					break;
			}
		default:
			break;
		}
		/* skip till end of line */
		for (; x < size; x++) {
			ch = FUNC10(&diff_head, x);
			if ((ch & 0xFF) == '\n') {
				x++;
				break;
			}
		}
	}
	p1->length = y1;
	p2->length = y2;
	FUNC1(&diff_a_head, p1, entry);
	FUNC1(&diff_b_head, p2, entry);

	/* first pass - verify input */
	size = FUNC14(&diff_a_head);
	for (x = 0; x != size; x++) {
		ch = FUNC10(&diff_a_head, x) & 0xFF;
		if (!(ch & 0x80) && ch != '\t' && ch != '\r' && ch != '\n' &&
		    ch != ' ' && !FUNC9(ch))
			FUNC6(EX_SOFTWARE, "Non printable characters are not allowed: '%c'", ch);
		else if (ch & 0x80) {
			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
		}
	}

	/* second pass - identify all comments */
	for (x = 0; x < size; x++) {
		ch = FUNC10(&diff_a_head, x);
		chn = FUNC10(&diff_a_head, x + 1);
		if ((ch & 0xFF) == '/' && (chn & 0xFF) == '/') {
			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
			FUNC12(&diff_a_head, x + 1, chn | BLOCK_MASK);
			for (x += 2; x < size; x++) {
				ch = FUNC10(&diff_a_head, x);
				if ((ch & 0xFF) == '\n')
					break;
				FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
			}
		} else if ((ch & 0xFF) == '/' && (chn & 0xFF) == '*') {
			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
			FUNC12(&diff_a_head, x + 1, chn | BLOCK_MASK);
			for (x += 2; x < size; x++) {
				ch = FUNC10(&diff_a_head, x);
				chn = FUNC10(&diff_a_head, x + 1);
				if ((ch & 0xFF) == '*' && (chn & 0xFF) == '/') {
					FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
					FUNC12(&diff_a_head, x + 1, chn | BLOCK_MASK);
					x++;
					break;
				}
				FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
			}
		}
	}

	/* third pass - identify preprocessor tokens and strings */
	for (x = 0; x < size; x++) {
		ch = FUNC10(&diff_a_head, x);
		if (ch & BLOCK_MASK)
			continue;
		if (inside_string == 0 && (ch & 0xFF) == '#') {
			int skip_newline = 0;

			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
			for (x++; x < size; x++) {
				ch = FUNC10(&diff_a_head, x);
				if ((ch & 0xFF) == '\n') {
					if (!skip_newline)
						break;
					skip_newline = 0;
				}
				if (ch & BLOCK_MASK)
					continue;
				if ((ch & 0xFF) == '\\')
					skip_newline = 1;
				FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
			}
		}
		if ((ch & 0xFF) == '"' || (ch & 0xFF) == '\'') {
			if (inside_string == 0) {
				inside_string = (ch & 0xFF);
			} else {
				if (escape_char == 0 && inside_string == (ch & 0xFF))
					inside_string = 0;
			}
			escape_char = 0;
			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
		} else if (inside_string != 0) {
			if ((ch & 0xFF) == '\\')
				escape_char = !escape_char;
			else
				escape_char = 0;
			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
		}
	}

	/* fourth pass - identify function blocks */
	if (opt_verbose > 0) {
		chn = FUNC10(&diff_a_head, x);
		FUNC11("L%02d%c|", recurse,
		    (chn & BLOCK_ADD) ? '+' : ' ');
	}
	for (x = 0; x < size; x++) {
		ch = FUNC10(&diff_a_head, x);
		if (opt_verbose > 0) {
			FUNC11("%c", ch & 0xFF);
			if ((ch & 0xFF) == '\n') {
				chn = FUNC10(&diff_a_head, x + 1);
				FUNC11("L%02d%c|", recurse,
				    (chn & BLOCK_ADD) ? '+' : ' ');
			}
		}
		if (ch & BLOCK_MASK)
			continue;
		switch (ch & 0xFF) {
		case '{':
		case '(':
			recurse++;
			break;
		default:
			break;
		}
		if (recurse != 0)
			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
		switch (ch & 0xFF) {
		case '}':
		case ')':
			recurse--;
			break;
		default:
			break;
		}
	}
	if (opt_verbose > 0)
		FUNC11("\n");
	if (recurse != 0)
		FUNC6(EX_SOFTWARE, "Unbalanced parenthesis");
	if (inside_string != 0)
		FUNC6(EX_SOFTWARE, "String without end");

	/* fifth pass - on the same line statements */
	for (x = 0; x < size; x++) {
		ch = FUNC10(&diff_a_head, x);
		if (ch & BLOCK_MASK)
			continue;
		switch (ch & 0xFF) {
		case '\n':
			break;
		default:
			FUNC12(&diff_a_head, x, ch | BLOCK_MASK);
			break;
		}
	}

	/* sixth pass - output relevant blocks to indent */
	for (y1 = x = 0; x < size; x++) {
		ch = FUNC10(&diff_a_head, x);
		if (ch & BLOCK_ADD) {
			FUNC0(&indent_in_head);

			p2 = FUNC2();
			y2 = 0;
			for (; y1 < size; y1++) {
				ch = FUNC10(&diff_a_head, y1);
				if (y1 > x && !(ch & (BLOCK_MASK | BLOCK_ADD)))
					break;
				p2->data[y2++] = ch & 0xFF;
				if (y2 == BLOCK_SIZE) {
					FUNC1(&indent_in_head, p2, entry);
					p2 = FUNC2();
					y2 = 0;
				}
			}
			if (p2->data[y2] != '\n')
				p2->data[y2++] = '\n';
			p2->length = y2;
			FUNC1(&indent_in_head, p2, entry);

			FUNC3(&indent_in_head, &indent_out_head,
			    "indent "
			    "-Tbool "
			    "-Tclass "
			    "-TFILE "
			    "-TLIST_ENTRY "
			    "-TLIST_HEAD "
			    "-TSLIST_ENTRY "
			    "-TSLIST_HEAD "
			    "-TSTAILQ_ENTRY "
			    "-TSTAILQ_HEAD "
			    "-TTAILQ_ENTRY "
			    "-TTAILQ_HEAD "
			    "-T__aligned "
			    "-T__packed "
			    "-T__unused "
			    "-T__used "
			    "-Tfd_set "
			    "-Toss_mixerinfo "
			    "-Tu_char "
			    "-Tu_int "
			    "-Tu_long "
			    "-Tu_short "
			    "-ta -st -bad -bap -nbbb -nbc -br -nbs "
			    "-c41 -cd41 -cdb -ce -ci4 -cli0 -d0 -di8 -ndj -ei -nfc1 "
			    "-nfcb -i8 -ip8 -l79 -lc77 -ldi0 -nlp -npcs -psl -sc "
			    "-nsob -nv "
			    " | "
			    "sed "
			    "-e 's/_HEAD [(]/_HEAD(/g' "
			    "-e 's/_ENTRY [(]/_ENTRY(/g' "
			    "-e 's/\t__aligned/ __aligned/g' "
			    "-e 's/\t__packed/ __packed/g' "
			    "-e 's/\t__unused/ __unused/g' "
			    "-e 's/\t__used/ __used/g' "
			    "-e 's/^#define /#define\t/g'");

			if (opt_diff_tool != NULL) {
				if (FUNC5(&indent_in_head, &indent_out_head))
					retval = 1;
			} else {
				if (FUNC4(&indent_in_head, &indent_out_head))
					retval = 1;
			}
			FUNC7(&indent_in_head);
			FUNC7(&indent_out_head);
			x = y1;
		} else if (!(ch & BLOCK_MASK)) {
			y1 = x + 1;
		}
	}
	return (retval);
}