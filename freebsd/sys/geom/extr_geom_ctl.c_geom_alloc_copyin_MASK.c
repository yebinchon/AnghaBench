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
struct gctl_req {int /*<<< orphan*/  nerror; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC3(struct gctl_req *req, void *uaddr, size_t len)
{
	void *ptr;

	ptr = FUNC2(len, M_WAITOK);
	req->nerror = FUNC0(uaddr, ptr, len);
	if (!req->nerror)
		return (ptr);
	FUNC1(ptr);
	return (NULL);
}