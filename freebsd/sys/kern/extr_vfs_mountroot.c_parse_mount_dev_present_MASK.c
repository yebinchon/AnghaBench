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
struct nameidata {int /*<<< orphan*/  ni_vp; } ;

/* Variables and functions */
 int FOLLOW ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC2 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const char *dev)
{
	struct nameidata nd;
	int error;

	FUNC1(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, dev, curthread);
	error = FUNC2(&nd);
	if (!error)
		FUNC3(nd.ni_vp);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	return (error != 0) ? 0 : 1;
}