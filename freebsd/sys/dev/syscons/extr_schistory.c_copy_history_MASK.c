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
typedef  int /*<<< orphan*/  sc_vtb_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(sc_vtb_t *from, sc_vtb_t *to)
{
	int lines;
	int cols;
	int cols1;
	int cols2;
	int pos;
	int i;

	lines = FUNC4(from);
	cols1 = FUNC2(from);
	cols2 = FUNC2(to);
	cols = FUNC0(cols1, cols2);
	pos = FUNC6(from);
	for (i = 0; i < lines; ++i) {
		FUNC1(from, pos, to, cols);
		if (cols < cols2)
			FUNC5(to, FUNC3(to, 
						   FUNC6(to), 
						   cols2 - cols));
		pos = FUNC3(from, pos, cols1);
	}
}