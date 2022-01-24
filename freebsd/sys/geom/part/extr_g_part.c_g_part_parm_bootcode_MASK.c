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
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int ENOATTR ; 
 void* FUNC0 (struct gctl_req*,char const*,int*) ; 

__attribute__((used)) static int
FUNC1(struct gctl_req *req, const char *name, const void **v,
    unsigned int *s)
{
	const void *p;
	int size;

	p = FUNC0(req, name, &size);
	if (p == NULL)
		return (ENOATTR);
	*v = p;
	*s = size;
	return (0);
}