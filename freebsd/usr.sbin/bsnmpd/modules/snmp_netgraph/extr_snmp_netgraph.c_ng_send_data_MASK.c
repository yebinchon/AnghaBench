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
 int FUNC0 (int /*<<< orphan*/ ,char const*,void const*,size_t) ; 
 int /*<<< orphan*/  dsock ; 

int
FUNC1(const char *hook, const void *sndbuf, size_t sndlen)
{
	return (FUNC0(dsock, hook, sndbuf, sndlen));
}