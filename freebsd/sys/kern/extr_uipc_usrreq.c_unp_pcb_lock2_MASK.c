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
struct unpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 

__attribute__((used)) static void
FUNC3(struct unpcb *unp, struct unpcb *unp2)
{
	FUNC0(unp != unp2);
	FUNC2(unp);
	FUNC2(unp2);
	if ((uintptr_t)unp2 > (uintptr_t)unp) {
		FUNC1(unp);
		FUNC1(unp2);
	} else {
		FUNC1(unp2);
		FUNC1(unp);
	}
}