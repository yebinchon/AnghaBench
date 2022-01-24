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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int D_TAPE ; 
 int /*<<< orphan*/  FIODTYPE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  address ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ skip ; 
 int /*<<< orphan*/  stdin ; 

void
FUNC11(const char *fname, int statok)
{
	int type;
	struct stat sb;

	if (statok) {
		if (FUNC8(FUNC6(stdin), &sb))
			FUNC5(1, "%s", fname);
		if (FUNC3(sb.st_mode) && skip > sb.st_size) {
			address += sb.st_size;
			skip -= sb.st_size;
			return;
		}
	}
	if (!statok || FUNC2(sb.st_mode) || FUNC4(sb.st_mode)) {
		FUNC10();
		return;
	}
	if (FUNC1(sb.st_mode) || FUNC0(sb.st_mode)) {
		if (FUNC9(FUNC6(stdin), FIODTYPE, &type))
			FUNC5(1, "%s", fname);
		/*
		 * Most tape drives don't support seeking,
		 * yet fseek() would succeed.
		 */
		if (type & D_TAPE) {
			FUNC10();
			return;
		}
	}
	if (FUNC7(stdin, skip, SEEK_SET)) {
		FUNC10();
		return;
	}
	address += skip;
	skip = 0;
}