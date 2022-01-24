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
 int FUNC0 (struct ucred*,struct ucred*) ; 
 int FUNC1 (struct ucred*,struct ucred*) ; 
 int FUNC2 (struct ucred*,struct ucred*) ; 
 int FUNC3 (struct ucred*,struct ucred*) ; 
 int FUNC4 (struct ucred*,struct ucred*) ; 

int
FUNC5(struct ucred *u1, struct ucred *u2)
{
	int error;

	if ((error = FUNC4(u1, u2)))
		return (error);
#ifdef MAC
	if ((error = mac_cred_check_visible(u1, u2)))
		return (error);
#endif
	if ((error = FUNC2(u1, u2)))
		return (error);
	if ((error = FUNC1(u1, u2)))
		return (error);
	if ((error = FUNC0(u1, u2)))
		return (error);
	return (0);
}