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

/* Variables and functions */
 char const ARGFLAG ; 
 int /*<<< orphan*/  COMMA ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 char const* lquote ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char const* rquote ; 

void
FUNC4(const char *argv[], int argc)
{
	const char *t;
	const char *p;
	int n;
	int argno;

	t = argv[0];		       /* defn string as a whole */
	p = t;
	while (*p)
		p++;
	p--;			       /* last character of defn */
	while (p > t) {
		if (*(p - 1) != ARGFLAG)
			FUNC0(*p);
		else {
			switch (*p) {

			case '#':
				FUNC1(argc - 2);
				break;
			case '0':
			case '1':
			case '2':
			case '3':
			case '4':
			case '5':
			case '6':
			case '7':
			case '8':
			case '9':
				if ((argno = *p - '0') < argc - 1)
					FUNC2(argv[argno + 1]);
				break;
			case '*':
				if (argc > 2) {
					for (n = argc - 1; n > 2; n--) {
						FUNC2(argv[n]);
						FUNC3(COMMA);
					}
					FUNC2(argv[2]);
				}
				break;
                        case '@':
				if (argc > 2) {
					for (n = argc - 1; n > 2; n--) {
						FUNC2(rquote);
						FUNC2(argv[n]);
						FUNC2(lquote);
						FUNC3(COMMA);
					}
					FUNC2(rquote);
					FUNC2(argv[2]);
					FUNC2(lquote);
				}
                                break;
			default:
				FUNC0(*p);
				FUNC0('$');
				break;
			}
			p--;
		}
		p--;
	}
	if (p == t)		       /* do last character */
		FUNC0(*p);
}