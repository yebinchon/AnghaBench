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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int LOG_NDELAY ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  LOG_USER ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 

void
FUNC1(char const *prog, int32_t log2stderr)
{
	FUNC0(prog, LOG_PID|LOG_NDELAY|(log2stderr? LOG_PERROR:0), LOG_USER);
}