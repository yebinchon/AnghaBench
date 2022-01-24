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
struct ntb_ctx_ops {int dummy; } ;
struct ntb_child {void* ctx; struct ntb_ctx_ops* ctx_ops; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ntb_child* FUNC1 (int /*<<< orphan*/ ) ; 

void *
FUNC2(device_t ntb, const struct ntb_ctx_ops **ctx_ops)
{
	struct ntb_child *nc = FUNC1(ntb);

	FUNC0(nc->ctx != NULL && nc->ctx_ops != NULL, ("bogus"));
	if (ctx_ops != NULL)
		*ctx_ops = nc->ctx_ops;
	return (nc->ctx);
}