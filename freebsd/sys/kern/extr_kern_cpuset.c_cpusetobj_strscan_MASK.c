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
struct bitset {int dummy; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int CPUSETBUFSIZ ; 
 int /*<<< orphan*/  CPU_SETSIZE ; 
 size_t FUNC0 (struct bitset*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*) ; 

int
FUNC2(cpuset_t *set, const char *buf)
{
	char p;

	if (FUNC1(buf) > CPUSETBUFSIZ - 1)
		return (-1);

	p = buf[FUNC0((struct bitset *)set, CPU_SETSIZE, buf)];
	if (p != '\0')
		return (-1);

	return (0);
}