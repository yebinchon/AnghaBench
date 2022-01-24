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
typedef  scalar_t__ time_t ;
struct fifolog_writer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fifolog_writer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

int
FUNC2(struct fifolog_writer *f, time_t now)
{

	if (now == 0)
		FUNC1(&now);
	return (FUNC0(f, now));
}