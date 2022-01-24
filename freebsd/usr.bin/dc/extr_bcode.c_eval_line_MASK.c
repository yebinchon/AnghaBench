#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct source {TYPE_1__* vtable; } ;
struct TYPE_2__ {char* (* readline ) (struct source*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC3 (struct source*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	/* Always read from stdin */
	struct source in;
	char *p;

	FUNC0(stdin);
	FUNC2(&in, stdin);
	p = (*in.vtable->readline)(&in);
	FUNC1(p);
}