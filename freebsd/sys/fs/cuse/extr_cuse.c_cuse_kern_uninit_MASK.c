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

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cuse_dev ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cuse_mtx ; 
 int /*<<< orphan*/  cuse_server_head ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	void *ptr;

	while (1) {

		FUNC6("Cuse: Please exit all /dev/cuse instances "
		    "and processes which have used this device.\n");

		FUNC5("DRAIN", 2 * hz);

		FUNC1();
		ptr = FUNC0(&cuse_server_head);
		FUNC2();

		if (ptr == NULL)
			break;
	}

	if (cuse_dev != NULL)
		FUNC3(cuse_dev);

	FUNC4(&cuse_mtx);
}