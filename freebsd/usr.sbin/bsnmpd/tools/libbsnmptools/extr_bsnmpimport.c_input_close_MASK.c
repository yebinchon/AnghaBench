#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* path; struct TYPE_5__* fname; int /*<<< orphan*/  fp; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* input ; 
 int /*<<< orphan*/  inputs ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC4(void)
{
	if (input == NULL)
		return;

	FUNC2(input->fp);
	FUNC3(input->fname);
	FUNC3(input->path);
	FUNC1(input, link);
	FUNC3(input);

	input = FUNC0(&inputs);
}