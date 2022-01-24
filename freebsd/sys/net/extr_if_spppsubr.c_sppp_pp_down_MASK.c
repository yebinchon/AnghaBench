#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sppp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* Down ) (struct sppp*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC1 (struct sppp*) ; 
 TYPE_1__ lcp ; 
 int /*<<< orphan*/  FUNC2 (struct sppp*) ; 

__attribute__((used)) static void
FUNC3(struct sppp *sp)
{
	FUNC0(sp);
	lcp.Down(sp);
	FUNC1(sp);
}