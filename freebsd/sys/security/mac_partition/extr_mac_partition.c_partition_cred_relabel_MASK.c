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
struct label {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct ucred *cred, struct label *newlabel)
{

	if (newlabel != NULL && FUNC0(newlabel) != 0)
		FUNC1(cred->cr_label, FUNC0(newlabel));
}