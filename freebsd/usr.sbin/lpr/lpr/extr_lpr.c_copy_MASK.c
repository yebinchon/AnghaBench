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
struct printer {int max_blocks; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char const* dfname ; 
 char format ; 
 int inchar ; 
 int /*<<< orphan*/  nact ; 
 int ncopies ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 char* progname ; 
 int FUNC4 (int,char*,int) ; 
 char const* title ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static void
FUNC6(const struct printer *pp, int f, const char n[])
{
	register int fd, i, nr, nc;
	char buf[BUFSIZ];

	if (format == 'p')
		FUNC0('T', title ? title : n);
	for (i = 0; i < ncopies; i++)
		FUNC0(format, &dfname[inchar-2]);
	FUNC0('U', &dfname[inchar-2]);
	FUNC0('N', n);
	fd = FUNC2(dfname);
	nr = nc = 0;
	while ((i = FUNC4(f, buf, BUFSIZ)) > 0) {
		if (FUNC5(fd, buf, i) != i) {
			FUNC3("%s: %s: temp file write error\n", progname, n);
			break;
		}
		nc += i;
		if (nc >= BUFSIZ) {
			nc -= BUFSIZ;
			nr++;
			if (pp->max_blocks > 0 && nr > pp->max_blocks) {
				FUNC3("%s: %s: copy file is too large\n",
				    progname, n);
				break;
			}
		}
	}
	(void) FUNC1(fd);
	if (nc==0 && nr==0)
		FUNC3("%s: %s: empty input file\n", progname,
		    f ? n : "stdin");
	else
		nact++;
}