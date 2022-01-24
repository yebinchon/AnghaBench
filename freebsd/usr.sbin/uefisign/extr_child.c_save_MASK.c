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
struct executable {int /*<<< orphan*/  x_len; int /*<<< orphan*/  x_buf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct executable *x, FILE *fp, const char *path)
{
	size_t nwritten;

	FUNC0(fp != NULL);
	FUNC0(path != NULL);

	nwritten = FUNC2(x->x_buf, x->x_len, 1, fp);
	if (nwritten != 1)
		FUNC1(1, "%s: fwrite", path);
}