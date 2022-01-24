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
#define  EINVAL 130 
#define  ENOSPC 129 
#define  EPERM 128 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,char const*) ; 
 int FUNC1 (struct gctl_req*,char const*,void const*,int) ; 

void
FUNC2(struct gctl_req *req, const char *param, void const *ptr,
    int len)
{

	switch (FUNC1(req, param, ptr, len)) {
	case EPERM:
		FUNC0(req, "No write access %s argument", param);
		break;
	case ENOSPC:
		FUNC0(req, "Wrong length %s argument", param);
		break;
	case EINVAL:
		FUNC0(req, "Missing %s argument", param);
		break;
	}
}