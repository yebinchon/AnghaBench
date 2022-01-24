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

/* Variables and functions */
 int MMC_ERR_MAX ; 
 char const** errmsg ; 

__attribute__((used)) static const char *
FUNC0(int e)
{

	if (e < 0 || e > MMC_ERR_MAX)
		return "Bad error code";
	return (errmsg[e]);
}