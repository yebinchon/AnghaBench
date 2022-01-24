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
struct configuration {int /*<<< orphan*/  rwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct configuration *config)
{
    FUNC0(configuration_lock_rdlock);
    FUNC2(&config->rwlock);
    FUNC1(configuration_lock_rdlock);
}