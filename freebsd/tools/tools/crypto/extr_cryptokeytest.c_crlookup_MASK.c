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
struct crypt_find_op {int crid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIOCFINDDEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypt_find_op*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC4(const char *devname)
{
	struct crypt_find_op find;

	find.crid = -1;
	FUNC3(find.name, devname, sizeof(find.name));
	if (FUNC2(FUNC0(), CIOCFINDDEV, &find) == -1)
		FUNC1(1, "ioctl(CIOCFINDDEV)");
	return find.crid;
}