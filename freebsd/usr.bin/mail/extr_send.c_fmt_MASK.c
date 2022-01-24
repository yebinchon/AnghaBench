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
struct name {char const* n_name; struct name* n_flink; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 

void
FUNC3(const char *str, struct name *np, FILE *fo, int comma)
{
	int col, len;

	comma = comma ? 1 : 0;
	col = FUNC2(str);
	if (col)
		FUNC1(str, fo);
	for (; np != NULL; np = np->n_flink) {
		if (np->n_flink == NULL)
			comma = 0;
		len = FUNC2(np->n_name);
		col++;		/* for the space */
		if (col + len + comma > 72 && col > 4) {
			FUNC0(fo, "\n    ");
			col = 4;
		} else
			FUNC0(fo, " ");
		FUNC1(np->n_name, fo);
		if (comma)
			FUNC0(fo, ",");
		col += len + comma;
	}
	FUNC0(fo, "\n");
}