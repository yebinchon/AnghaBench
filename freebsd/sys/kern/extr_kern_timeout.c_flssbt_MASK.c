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
typedef  int uint64_t ;
typedef  int sbintime_t ;

/* Variables and functions */
 int SBT_1S ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(sbintime_t sbt)
{

	sbt += (uint64_t)sbt >> 1;
	if (sizeof(long) >= sizeof(sbintime_t))
		return (FUNC0(sbt));
	if (sbt >= SBT_1S)
		return (FUNC0(((uint64_t)sbt) >> 32) + 32);
	return (FUNC0(sbt));
}