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
struct pcisel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  _PATH_DEVPCI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 struct pcisel FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int,struct pcisel*,long,int) ; 
 long FUNC6 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *name, const char *reg, int width)
{
	long rstart;
	long rend;
	long r;
	char *end;
	int i;
	int fd;
	struct pcisel sel;

	fd = FUNC3(_PATH_DEVPCI, O_RDWR, 0);
	if (fd < 0)
		FUNC1(1, "%s", _PATH_DEVPCI);

	rend = rstart = FUNC6(reg, &end, 0);
	if (end && *end == ':') {
		end++;
		rend = FUNC6(end, (char **) 0, 0);
	}
	sel = FUNC2(name);
	for (i = 1, r = rstart; r <= rend; i++, r += width) {
		FUNC5(fd, &sel, r, width);
		if (i && !(i % 8))
			FUNC4(' ');
		FUNC4(i % (16/width) ? ' ' : '\n');
	}
	if (i % (16/width) != 1)
		FUNC4('\n');
	FUNC0(fd);
}