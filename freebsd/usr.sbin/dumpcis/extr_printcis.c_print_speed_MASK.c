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
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void
FUNC1(u_int i)
{
	if (i < 1000)
		FUNC0("%u bits/sec", i);
	else if (i < 1000000)
		FUNC0("%u kb/sec", i / 1000);
	else
		FUNC0("%u Mb/sec", i / 1000000);
}