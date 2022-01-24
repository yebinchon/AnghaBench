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
struct ucred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,int,int,int) ; 
 int /*<<< orphan*/  socket_check_create ; 

int
FUNC2(struct ucred *cred, int domain, int type, int proto)
{
	int error;

	FUNC1(socket_check_create, cred, domain, type,
	    proto);
	FUNC0(socket_check_create, error, cred, domain, type,
	    proto);

	return (error);
}