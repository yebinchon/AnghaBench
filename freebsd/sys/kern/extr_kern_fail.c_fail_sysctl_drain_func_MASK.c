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
struct sysctl_req {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct sysctl_req*,char const*,int) ; 

int
FUNC1(void *sysctl_args, const char *buf, int len)
{
	struct sysctl_req *sa;
	int error;

	sa = sysctl_args;

	error = FUNC0(sa, buf, len);

	if (error == ENOMEM)
		return (-1);
	else
		return (len);
}