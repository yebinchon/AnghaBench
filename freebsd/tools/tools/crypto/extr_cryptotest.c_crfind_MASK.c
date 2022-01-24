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
struct crypt_find_op {int crid; char const* name; } ;
typedef  int /*<<< orphan*/  find ;

/* Variables and functions */
 int /*<<< orphan*/  CRIOFINDDEV ; 
 int /*<<< orphan*/  FUNC0 (struct crypt_find_op*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypt_find_op*) ; 

const char *
FUNC4(int crid)
{
	static struct crypt_find_op find;

	FUNC0(&find, sizeof(find));
	find.crid = crid;
	if (FUNC3(FUNC1(), CRIOFINDDEV, &find) == -1)
		FUNC2(1, "ioctl(CIOCFINDDEV): crid %d", crid);
	return find.name;
}