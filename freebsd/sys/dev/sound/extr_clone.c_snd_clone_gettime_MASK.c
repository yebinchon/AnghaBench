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
struct snd_clone {struct timespec tsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

int
FUNC1(struct snd_clone *c, struct timespec *tsp)
{
	FUNC0(c != NULL, ("NULL snd_clone"));
	FUNC0(tsp != NULL, ("NULL timespec"));

	*tsp = c->tsp;

	return (0);
}