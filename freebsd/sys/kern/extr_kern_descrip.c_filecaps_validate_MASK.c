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
struct filecaps {int fc_fcntls; int fc_nioctls; int /*<<< orphan*/  fc_rights; int /*<<< orphan*/ * fc_ioctls; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FCNTL ; 
 int CAP_FCNTL_ALL ; 
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(const struct filecaps *fcaps, const char *func)
{

	FUNC0(FUNC2(&fcaps->fc_rights),
	    ("%s: invalid rights", func));
	FUNC0((fcaps->fc_fcntls & ~CAP_FCNTL_ALL) == 0,
	    ("%s: invalid fcntls", func));
	FUNC0(fcaps->fc_fcntls == 0 ||
	    FUNC1(&fcaps->fc_rights, CAP_FCNTL),
	    ("%s: fcntls without CAP_FCNTL", func));
	FUNC0(fcaps->fc_ioctls != NULL ? fcaps->fc_nioctls > 0 :
	    (fcaps->fc_nioctls == -1 || fcaps->fc_nioctls == 0),
	    ("%s: invalid ioctls", func));
	FUNC0(fcaps->fc_nioctls == 0 ||
	    FUNC1(&fcaps->fc_rights, CAP_IOCTL),
	    ("%s: ioctls without CAP_IOCTL", func));
}