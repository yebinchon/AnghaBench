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
struct TYPE_2__ {int /*<<< orphan*/  ksw_used; int /*<<< orphan*/  ksw_devname; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int dlen ; 
 TYPE_1__* kvmsw ; 
 int kvnsw ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ulen ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i, n;
	int len;

	dlen = sizeof("Disk");
	for (i = 0; i < kvnsw; ++i) {
		len = FUNC1(kvmsw[i].ksw_devname);
		if (dlen < len)
			dlen = len;
	}

	ulen = sizeof("Used");
	for (n = FUNC0(kvmsw[kvnsw].ksw_used), len = 2; n /= 10; ++len);
	if (ulen < len)
		ulen = len;
}