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
struct mtx {int dummy; } ;
struct lock_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 

void
FUNC1(struct lock_object *lock, uintptr_t how)
{

	FUNC0((struct mtx *)lock);
}