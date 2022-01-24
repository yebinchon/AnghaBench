#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int xf_size; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 TYPE_1__* FUNC2 (size_t) ; 
 size_t nxfiles ; 
 TYPE_1__* FUNC3 (TYPE_1__*,size_t) ; 
 int FUNC4 (char*,TYPE_1__*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* xfiles ; 

__attribute__((used)) static void
FUNC5(void)
{
	size_t len, olen;

	olen = len = sizeof(*xfiles);
	if ((xfiles = FUNC2(len)) == NULL)
		FUNC0(1, "malloc()");
	while (FUNC4("kern.file", xfiles, &len, 0, 0) == -1) {
		if (errno != ENOMEM || len != olen)
			FUNC0(1, "sysctlbyname()");
		olen = len *= 2;
		if ((xfiles = FUNC3(xfiles, len)) == NULL)
			FUNC0(1, "realloc()");
	}
	if (len > 0 && xfiles->xf_size != sizeof(*xfiles))
		FUNC1(1, "struct xfile size mismatch");
	nxfiles = len / sizeof(*xfiles);
}