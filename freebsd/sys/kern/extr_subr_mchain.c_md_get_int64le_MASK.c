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
struct mdchain {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mdchain*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct mdchain *mdp, int64_t *x)
{
	int64_t v;
	int error;

	error = FUNC1(mdp, &v);
	if (x != NULL)
		*x = FUNC0(v);
	return (error);
}