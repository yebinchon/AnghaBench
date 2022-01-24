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
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,char const*) ; 
 void* FUNC1 (struct gctl_req*,char const*,int) ; 

void *
FUNC2(struct gctl_req *req, const char *param, int len)
{
	void *p;

	p = FUNC1(req, param, len);
	if (p == NULL)
		FUNC0(req, "Missing %s argument", param);
	return (p);
}