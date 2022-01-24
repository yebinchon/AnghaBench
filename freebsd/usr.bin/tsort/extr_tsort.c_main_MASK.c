#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* b_buf; int b_bsize; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,char**,char*) ; 
 void* FUNC8 (int*,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int longest ; 
 scalar_t__ optind ; 
 int quiet ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	BUF *b;
	int c, n;
	FILE *fp;
	int bsize, ch, nused;
	BUF bufs[2];

	fp = NULL;
	while ((ch = FUNC7(argc, argv, "dlq")) != -1)
		switch (ch) {
		case 'd':
			debug = 1;
			break;
		case 'l':
			longest = 1;
			break;
		case 'q':
			quiet = 1;
			break;
		case '?':
		default:
			FUNC11();
		}
	argc -= optind;
	argv += optind;

	switch (argc) {
	case 0:
		fp = stdin;
		break;
	case 1:
		if ((fp = FUNC5(*argv, "r")) == NULL)
			FUNC1(1, "%s", *argv);
		break;
	default:
		FUNC11();
	}

	for (b = bufs, n = 2; --n >= 0; b++)
		b->b_buf = FUNC8(NULL, b->b_bsize = 1024);

	/* parse input and build the graph */
	for (n = 0, c = FUNC6(fp);;) {
		while (c != EOF && FUNC9(c))
			c = FUNC6(fp);
		if (c == EOF)
			break;

		nused = 0;
		b = &bufs[n];
		bsize = b->b_bsize;
		do {
			b->b_buf[nused++] = c;
			if (nused == bsize)
				b->b_buf = FUNC8(b->b_buf, bsize *= 2);
			c = FUNC6(fp);
		} while (c != EOF && !FUNC9(c));

		b->b_buf[nused] = '\0';
		b->b_bsize = bsize;
		if (n)
			FUNC0(bufs[0].b_buf, bufs[1].b_buf);
		n = !n;
	}
	(void)FUNC4(fp);
	if (n)
		FUNC2(1, "odd data count");

	/* do the sort */
	FUNC10();
	FUNC3(0);
}