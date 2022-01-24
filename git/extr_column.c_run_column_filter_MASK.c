#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct column_options {int width; int indent; int padding; } ;
struct argv_array {int dummy; } ;
struct TYPE_4__ {int in; int git_cmd; void* out; struct argv_array args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ column_process ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int fd_out ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC8(int colopts, const struct column_options *opts)
{
	struct argv_array *argv;

	if (fd_out != -1)
		return -1;

	FUNC2(&column_process);
	argv = &column_process.args;

	FUNC0(argv, "column");
	FUNC1(argv, "--raw-mode=%d", colopts);
	if (opts && opts->width)
		FUNC1(argv, "--width=%d", opts->width);
	if (opts && opts->indent)
		FUNC1(argv, "--indent=%s", opts->indent);
	if (opts && opts->padding)
		FUNC1(argv, "--padding=%d", opts->padding);

	FUNC6(stdout);
	column_process.in = -1;
	column_process.out = FUNC4(1);
	column_process.git_cmd = 1;

	if (FUNC7(&column_process))
		return -2;

	fd_out = FUNC4(1);
	FUNC3(1);
	FUNC5(column_process.in, 1);
	FUNC3(column_process.in);
	return 0;
}