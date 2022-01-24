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
struct unrhdr {int /*<<< orphan*/  ppfree; int /*<<< orphan*/  alloc; } ;
struct unr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct unr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 

__attribute__((used)) static __inline void
FUNC1(struct unrhdr *uh, void *ptr)
{
	struct unr *up;

	uh->alloc--;
	up = ptr;
	FUNC0(&uh->ppfree, up, list);
}