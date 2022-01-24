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
typedef  int pid_t ;

/* Variables and functions */
 int FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static pid_t
FUNC2(const char *str)
{
	pid_t res;
	char *tail;

	res = FUNC0(str, &tail, 0);
	if (*tail != '\0') {
		FUNC1("non-numeric pid");
		return (-1);
	}
	return (res);
}