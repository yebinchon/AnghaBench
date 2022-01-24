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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC3(SVCXPRT *transp, char *owner, size_t ownersize)
{
	uid_t uid;
 
	if (FUNC0(transp, &uid) < 0)
                FUNC2(owner, "unknown", ownersize);
	else if (uid == 0)
		FUNC2(owner, "superuser", ownersize);
	else
		FUNC1(owner, ownersize, "%d", uid);  

	return owner;
}