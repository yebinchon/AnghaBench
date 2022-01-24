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
struct hookinfo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hookinfo*) ; 

int
FUNC1(struct hookinfo *hki)
{
	int error;

	/*
	 * XXXLAS: Should probably include the functionality to update the
	 * helper's h_hooks struct member.
	 */
	error = FUNC0(hki);

	return (error);
}