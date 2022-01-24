#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  scalar_t__ daddr_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  TYPE_1__* blist_t ;
struct TYPE_10__ {scalar_t__ bl_radix; } ;

/* Variables and functions */
 int BLIST_BMAP_RADIX ; 
 int BLIST_META_RADIX ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (TYPE_1__*,int*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,long long,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,long long,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* FUNC14 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct sbuf*) ; 
 struct sbuf* FUNC17 () ; 
 int FUNC18 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC19 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC20(int ac, char **av)
{
	int size = BLIST_META_RADIX * BLIST_BMAP_RADIX;
	int i;
	blist_t bl;
	struct sbuf *s;

	for (i = 1; i < ac; ++i) {
		const char *ptr = av[i];
		if (*ptr != '-') {
			size = FUNC19(ptr, NULL, 0);
			continue;
		}
		ptr += 2;
		FUNC11(stderr, "Bad option: %s\n", ptr - 2);
		FUNC8(1);
	}
	bl = FUNC2(size, M_WAITOK);
	FUNC4(bl, 0, size);

	for (;;) {
		char buf[1024];
		long long da = 0;
		int count = 0, maxcount = 0;

		FUNC12("%lld/%lld/%lld> ", (long long)FUNC1(bl),
		    (long long)size, (long long)bl->bl_radix);
		FUNC9(stdout);
		if (FUNC10(buf, sizeof(buf), stdin) == NULL)
			break;
		switch(buf[0]) {
		case 'r':
			if (FUNC18(buf + 1, "%d", &count) == 1) {
				FUNC6(&bl, count, 1, M_WAITOK);
			} else {
				FUNC12("?\n");
			}
		case 'p':
			FUNC5(bl);
			break;
		case 's':
			s = FUNC17();
			FUNC7(bl, s);
			FUNC16(s);
			FUNC12("%s", FUNC14(s));
			FUNC15(s);
			break;
		case 'a':
			if (FUNC18(buf + 1, "%d%d", &count, &maxcount) == 2) {
				daddr_t blk = FUNC0(bl, &count, maxcount);
				FUNC12("    R=%08llx, c=%08d\n",
				    (long long)blk, count);
			} else {
				FUNC12("?\n");
			}
			break;
		case 'f':
			if (FUNC18(buf + 1, "%llx %d", &da, &count) == 2) {
				FUNC4(bl, da, count);
			} else {
				FUNC12("?\n");
			}
			break;
		case 'l':
			if (FUNC18(buf + 1, "%llx %d", &da, &count) == 2) {
				FUNC12("    n=%jd\n",
				    (intmax_t)FUNC3(bl, da, count));
			} else {
				FUNC12("?\n");
			}
			break;
		case '?':
		case 'h':
			FUNC13(
			    "p          -print\n"
			    "s          -stats\n"
			    "a %d %d    -allocate\n"
			    "f %x %d    -free\n"
			    "l %x %d    -fill\n"
			    "r %d       -resize\n"
			    "h/?        -help\n"
			    "q          -quit"
			);
			break;
		case 'q':
			break;
		default:
			FUNC12("?\n");
			break;
		}
		if (buf[0] == 'q')
			break;
	}
	return (0);
}