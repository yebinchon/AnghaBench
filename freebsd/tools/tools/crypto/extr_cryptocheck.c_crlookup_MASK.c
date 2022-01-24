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
 int CRYPTO_FLAG_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypt_find_op*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC6(const char *devname)
{
	struct crypt_find_op find;

	if (FUNC5(devname, "soft", 4) == 0) {
		FUNC1();
		return CRYPTO_FLAG_SOFTWARE;
	}

	find.crid = -1;
	FUNC4(find.name, devname, sizeof(find.name));
	if (FUNC3(FUNC0(), CIOCFINDDEV, &find) == -1)
		FUNC2(1, "ioctl(CIOCFINDDEV)");
	return (find.crid);
}