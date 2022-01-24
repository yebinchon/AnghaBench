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
struct cfjail {int /*<<< orphan*/ * queue; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  JF_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfjail*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cfjail*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ready ; 
 int /*<<< orphan*/  tq ; 

void
FUNC2(struct cfjail *j)
{
	j->flags |= JF_FAILED;
	FUNC1(j->queue, j, tq);
	FUNC0(&ready, j, tq);
	j->queue = &ready;
}