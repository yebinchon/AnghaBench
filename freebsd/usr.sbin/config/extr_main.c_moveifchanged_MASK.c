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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

void
FUNC8(const char *from_name, const char *to_name)
{
	char *p, *q;
	int changed;
	size_t tsize;
	struct stat from_sb, to_sb;
	int from_fd, to_fd;

	changed = 0;

	if ((from_fd = FUNC5(from_name, O_RDONLY)) < 0)
		FUNC0(EX_OSERR, "moveifchanged open(%s)", from_name);

	if ((to_fd = FUNC5(to_name, O_RDONLY)) < 0)
		changed++;

	if (!changed && FUNC1(from_fd, &from_sb) < 0)
		FUNC0(EX_OSERR, "moveifchanged fstat(%s)", from_name);

	if (!changed && FUNC1(to_fd, &to_sb) < 0)
		FUNC0(EX_OSERR, "moveifchanged fstat(%s)", to_name);

	if (!changed && from_sb.st_size != to_sb.st_size)
		changed++;

	tsize = (size_t)from_sb.st_size;

	if (!changed) {
		p = FUNC3(NULL, tsize, PROT_READ, MAP_SHARED, from_fd, (off_t)0);
		if (p == MAP_FAILED)
			FUNC0(EX_OSERR, "mmap %s", from_name);
		q = FUNC3(NULL, tsize, PROT_READ, MAP_SHARED, to_fd, (off_t)0);
		if (q == MAP_FAILED)
			FUNC0(EX_OSERR, "mmap %s", to_name);

		changed = FUNC2(p, q, tsize);
		FUNC4(p, tsize);
		FUNC4(q, tsize);
	}
	if (changed) {
		if (FUNC6(from_name, to_name) < 0)
			FUNC0(EX_OSERR, "rename(%s, %s)", from_name, to_name);
	} else {
		if (FUNC7(from_name) < 0)
			FUNC0(EX_OSERR, "unlink(%s)", from_name);
	}
}