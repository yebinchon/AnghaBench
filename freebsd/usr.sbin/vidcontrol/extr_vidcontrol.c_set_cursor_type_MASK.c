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
struct cshape {int* shape; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_GETCURSORSHAPE ; 
 int /*<<< orphan*/  CONS_SETCURSORSHAPE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cshape*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cshape*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(char *param)
{
	struct cshape shape;

	/* Dry run to determine color, default and local flags. */
	shape.shape[0] = 0;
	shape.shape[1] = -1;
	shape.shape[2] = -1;
	FUNC2(param, &shape);

	/* Get the relevant old setting. */
	if (FUNC1(0, CONS_GETCURSORSHAPE, &shape) != 0) {
		FUNC3();
		FUNC0(1, "ioctl(CONS_GETCURSORSHAPE)");
	}

	FUNC2(param, &shape);
	if (FUNC1(0, CONS_SETCURSORSHAPE, &shape) != 0) {
		FUNC3();
		FUNC0(1, "ioctl(CONS_SETCURSORSHAPE)");
	}
}