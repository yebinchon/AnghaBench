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
 int /*<<< orphan*/  FUNC0 (struct ucred*,struct ucred*) ; 
 struct ucred* FUNC1 () ; 

struct ucred *
FUNC2(struct ucred *cr)
{
	struct ucred *newcr;

	newcr = FUNC1();
	FUNC0(newcr, cr);
	return (newcr);
}