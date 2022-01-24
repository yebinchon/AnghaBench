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
struct timespec {int dummy; } ;
struct bintime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bintime*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct bintime*) ; 

void
FUNC2(struct timespec *tsp)
{
	struct bintime bt;

	FUNC1(&bt);
	FUNC0(&bt, tsp);
}