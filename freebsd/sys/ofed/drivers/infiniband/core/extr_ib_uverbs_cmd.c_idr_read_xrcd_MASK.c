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
struct ib_xrcd {int dummy; } ;
struct ib_uobject {struct ib_xrcd* object; } ;
struct ib_ucontext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ib_uverbs_xrcd_idr ; 
 struct ib_uobject* FUNC0 (int /*<<< orphan*/ *,int,struct ib_ucontext*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_xrcd *FUNC1(int xrcd_handle, struct ib_ucontext *context,
				     struct ib_uobject **uobj)
{
	*uobj = FUNC0(&ib_uverbs_xrcd_idr, xrcd_handle, context, 0);
	return *uobj ? (*uobj)->object : NULL;
}