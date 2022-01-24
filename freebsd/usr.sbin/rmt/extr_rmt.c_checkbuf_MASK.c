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
typedef  int /*<<< orphan*/  size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int maxrecsize ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static char *
FUNC5(char *rec, int size)
{

	if (size <= maxrecsize)
		return (rec);
	if (rec != NULL)
		FUNC2(rec);
	rec = FUNC3(size);
	if (rec == NULL) {
		FUNC0("rmtd: cannot allocate buffer space\n");
		FUNC1(4);
	}
	maxrecsize = size;
	while (size > 1024 &&
	       FUNC4(0, SOL_SOCKET, SO_RCVBUF, &size, sizeof (size)) < 0)
		size -= 1024;
	return (rec);
}