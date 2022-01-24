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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  cred_check_visible ; 

int
FUNC2(struct ucred *cr1, struct ucred *cr2)
{
	int error;

	FUNC1(cred_check_visible, cr1, cr2);
	FUNC0(cred_check_visible, error, cr1, cr2);

	return (error);
}