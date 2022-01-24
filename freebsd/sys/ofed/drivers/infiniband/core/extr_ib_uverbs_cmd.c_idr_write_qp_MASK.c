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
struct ib_uobject {struct ib_qp* object; } ;
struct ib_ucontext {int dummy; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ib_uverbs_qp_idr ; 
 struct ib_uobject* FUNC0 (int /*<<< orphan*/ *,int,struct ib_ucontext*) ; 

__attribute__((used)) static struct ib_qp *FUNC1(int qp_handle, struct ib_ucontext *context)
{
	struct ib_uobject *uobj;

	uobj = FUNC0(&ib_uverbs_qp_idr, qp_handle, context);
	return uobj ? uobj->object : NULL;
}