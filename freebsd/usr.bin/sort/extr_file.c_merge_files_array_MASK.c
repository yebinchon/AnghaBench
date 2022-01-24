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
struct file_header {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file_header**) ; 
 int /*<<< orphan*/  FUNC3 (struct file_header**,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,struct file_header**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct file_header**) ; 
 struct file_header** FUNC7 (size_t) ; 

__attribute__((used)) static void
FUNC8(size_t argc, const char **argv, const char *fn_out)
{

	if (argv && fn_out) {
		struct file_header **fh;
		FILE *f_out;
		size_t i;

		f_out = FUNC5(fn_out, "w");

		if (f_out == NULL)
			FUNC1(2, NULL);

		fh = FUNC7((argc + 1) * sizeof(struct file_header *));

		for (i = 0; i < argc; i++)
			FUNC3(fh + i, argv[i], (size_t) i);

		FUNC4(argc, fh, f_out);

		for (i = 0; i < argc; i++)
			FUNC2(fh + i);

		FUNC6(fh);

		FUNC0(f_out, fn_out);
	}
}