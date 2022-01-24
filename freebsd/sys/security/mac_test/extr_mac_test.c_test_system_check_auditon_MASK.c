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
struct ucred {int /*<<< orphan*/  cr_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  system_check_auditon ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, int cmd)
{

	FUNC1(cred->cr_label, MAGIC_CRED);
	FUNC0(system_check_auditon);

	return (0);
}