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
struct nameidata {int dummy; } ;

/* Variables and functions */
 int FREAD ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct nameidata*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const char *path, struct nameidata *nid)
{
	int flags, rc;

	flags = FREAD;

	FUNC2();

	FUNC1(nid, LOOKUP, 0, UIO_SYSSPACE, path, curthread);
	rc = FUNC3(nid, &flags, 0, NULL);
	FUNC0(nid, NDF_ONLY_PNBUF);
	if (rc != 0)
		return (rc);

	return (0);
}