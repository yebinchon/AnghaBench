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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 

__attribute__((used)) static inline uint64_t
FUNC1(const char *str)
{
	uint64_t ret = 0;
	FUNC0((char *)&ret, str, sizeof(ret));
	return (ret);
}