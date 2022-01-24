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
typedef  int /*<<< orphan*/  u8 ;
struct ib_device {int /*<<< orphan*/  name; } ;
struct ib_class_port_info {int dummy; } ;
struct class_port_info_context {int /*<<< orphan*/  done; int /*<<< orphan*/  sa_query; int /*<<< orphan*/  port_num; struct ib_class_port_info* class_port_info; struct ib_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMA_QUERY_CLASSPORT_INFO_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cma_query_sa_classport_info_cb ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct class_port_info_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct class_port_info_context*) ; 
 struct class_port_info_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sa_client ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ib_device *device, u8 port_num,
				       struct ib_class_port_info *class_port_info)
{
	struct class_port_info_context *cb_ctx;
	int ret;

	cb_ctx = FUNC3(sizeof(*cb_ctx), GFP_KERNEL);
	if (!cb_ctx)
		return -ENOMEM;

	cb_ctx->device = device;
	cb_ctx->class_port_info = class_port_info;
	cb_ctx->port_num = port_num;
	FUNC1(&cb_ctx->done);

	ret = FUNC0(&sa_client, device, port_num,
					     CMA_QUERY_CLASSPORT_INFO_TIMEOUT,
					     GFP_KERNEL, cma_query_sa_classport_info_cb,
					     cb_ctx, &cb_ctx->sa_query);
	if (ret < 0) {
		FUNC4("RDMA CM: %s port %u failed to send ClassPortInfo query, ret: %d\n",
		       device->name, port_num, ret);
		goto out;
	}

	FUNC5(&cb_ctx->done);

out:
	FUNC2(cb_ctx);
	return ret;
}