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
struct tuple_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tuple_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct tuple_list*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 struct tuple_list* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(char *name)
{
	int     fd;
	struct tuple_list *tl;

	fd = FUNC3(name, O_RDONLY);
	if (fd < 0)
		return;
	tl = FUNC5(fd);
	if (tl) {
		FUNC4("Configuration data for file %s\n",
		    name);
		FUNC1(tl);
		FUNC2(tl);
	}
	FUNC0(fd);
}