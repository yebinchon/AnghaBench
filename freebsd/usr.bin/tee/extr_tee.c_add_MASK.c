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
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_4__ {int fd; char const* name; struct TYPE_4__* next; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int EXIT_FAILURE ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 TYPE_1__* head ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(int fd, const char *name)
{
	LIST *p;
	cap_rights_t rights;

	if (fd == STDOUT_FILENO) {
		if (FUNC1() == -1)
			FUNC3(EXIT_FAILURE, "unable to limit stdout");
	} else {
		FUNC0(&rights, CAP_WRITE, CAP_FSTAT);
		if (FUNC2(fd, &rights) < 0)
			FUNC3(EXIT_FAILURE, "unable to limit rights");
	}

	if ((p = FUNC4(sizeof(LIST))) == NULL)
		FUNC3(1, "malloc");
	p->fd = fd;
	p->name = name;
	p->next = head;
	head = p;
}