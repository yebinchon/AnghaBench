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
struct msghdr {int dummy; } ;
struct cmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 

void
FUNC1(struct msghdr *mhp, struct cmsghdr *cmhp, char *bufp, size_t bufsize)
{
	if (mhp != NULL)
		FUNC0((void *)mhp, 0, sizeof(struct msghdr));
	if (cmhp != NULL)
		FUNC0((void *)cmhp, 0, sizeof(struct cmsghdr));
	if (bufp != NULL)
		FUNC0((void *)bufp, 0, bufsize);
}