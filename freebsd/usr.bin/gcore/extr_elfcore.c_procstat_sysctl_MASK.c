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
typedef  int pid_t ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_PROC ; 
 int /*<<< orphan*/  FUNC0 (int*,void*,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int*,int,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC5(void *arg, int what, size_t structsz, size_t *sizep)
{
	size_t len;
	pid_t pid;
	int name[4], structsize;
	void *buf, *p;

	pid = *(pid_t *)arg;
	structsize = structsz;
	name[0] = CTL_KERN;
	name[1] = KERN_PROC;
	name[2] = what;
	name[3] = pid;
	len = 0;
	if (FUNC4(name, 4, NULL, &len, NULL, 0) == -1)
		FUNC2(1, "kern.proc.%d.%u", what, pid);
	buf = FUNC1(1, sizeof(structsize) + len * 4 / 3);
	if (buf == NULL)
		FUNC3(1, "out of memory");
	FUNC0(&structsize, buf, sizeof(structsize));
	p = (char *)buf + sizeof(structsize);
	if (FUNC4(name, 4, p, &len, NULL, 0) == -1)
		FUNC2(1, "kern.proc.%d.%u", what, pid);

	*sizep = sizeof(structsize) + len;
	return (buf);
}