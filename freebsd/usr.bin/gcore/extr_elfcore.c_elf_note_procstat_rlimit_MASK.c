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
typedef  int /*<<< orphan*/  structsize ;
struct rlimit {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_PROC ; 
 int KERN_PROC_RLIMIT ; 
 int RLIM_NLIMITS ; 
 int /*<<< orphan*/  FUNC0 (int*,void*,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (int*,int,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC5(void *arg, size_t *sizep)
{
	pid_t pid;
	size_t len;
	int i, name[5], structsize;
	void *buf, *p;

	pid = *(pid_t *)arg;
	structsize = sizeof(struct rlimit) * RLIM_NLIMITS;
	buf = FUNC1(1, sizeof(structsize) + structsize);
	if (buf == NULL)
		FUNC3(1, "out of memory");
	FUNC0(&structsize, buf, sizeof(structsize));
	p = (char *)buf + sizeof(structsize);
	name[0] = CTL_KERN;
	name[1] = KERN_PROC;
	name[2] = KERN_PROC_RLIMIT;
	name[3] = pid;
	len = sizeof(struct rlimit);
	for (i = 0; i < RLIM_NLIMITS; i++) {
		name[4] = i;
		if (FUNC4(name, 5, p, &len, NULL, 0) == -1)
			FUNC2(1, "kern.proc.rlimit.%u", pid);
		if (len != sizeof(struct rlimit))
			FUNC3(1, "kern.proc.rlimit.%u: short read", pid);
		p += len;
	}

	*sizep = sizeof(structsize) + structsize;
	return (buf);
}