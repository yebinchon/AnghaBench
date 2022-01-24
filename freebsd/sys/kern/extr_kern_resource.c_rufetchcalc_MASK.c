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
struct timeval {int dummy; } ;
struct rusage {int dummy; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,struct rusage*) ; 

void
FUNC4(struct proc *p, struct rusage *ru, struct timeval *up,
    struct timeval *sp)
{

	FUNC0(p);
	FUNC3(p, ru);
	FUNC2(p, up, sp);
	FUNC1(p);
}