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
struct cm_work {scalar_t__ mad_recv_wc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_work*) ; 

__attribute__((used)) static void FUNC2(struct cm_work *work)
{
	if (work->mad_recv_wc)
		FUNC0(work->mad_recv_wc);
	FUNC1(work);
}