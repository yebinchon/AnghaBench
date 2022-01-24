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
typedef  int u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ PNP_TAG_END ; 
 int FUNC3 (int,int**,int*,int*) ; 

__attribute__((used)) static int
FUNC4(u_char **resourcesp, int *spacep, int *lenp)
{
	u_char *resources = *resourcesp;
	int space = *spacep;
	int len = 0;
	int error, done;
	u_char tag;

	error = 0;
	done = 0;
	while (!done) {
		error = FUNC3(1, &resources, &space, &len);
		if (error)
			goto out;
		tag = resources[len-1];
		if (FUNC0(tag) == 0) {
			/*
			 * Small resource, read contents.
			 */
			error = FUNC3(FUNC1(tag),
			    &resources, &space, &len);
			if (error)
				goto out;
			if (FUNC2(tag) == PNP_TAG_END)
				done = 1;
		} else {
			/*
			 * Large resource, read length and contents.
			 */
			error = FUNC3(2, &resources, &space, &len);
			if (error)
				goto out;
			error = FUNC3(resources[len-2]
			    + (resources[len-1] << 8), &resources, &space,
			    &len);
			if (error)
				goto out;
		}
	}

 out:
	*resourcesp = resources;
	*spacep = space;
	*lenp = len;
	return (error);
}