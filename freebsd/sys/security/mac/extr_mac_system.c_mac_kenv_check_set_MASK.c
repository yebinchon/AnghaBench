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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,char*,char*) ; 
 int /*<<< orphan*/  kenv_check_set ; 

int
FUNC2(struct ucred *cred, char *name, char *value)
{
	int error;

	FUNC1(kenv_check_set, cred, name, value);
	FUNC0(kenv_check_set, error, cred, name, value);

	return (error);
}