#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ib; } ;
struct rdma_id_private {TYPE_1__ cm_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CM_REJ_CONSUMER_DEFINED ; 
 int /*<<< orphan*/  FUNC0 (struct rdma_id_private*) ; 
 int FUNC1 (struct rdma_id_private*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rdma_id_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rdma_id_private *id_priv)
{
	int ret;

	ret = FUNC1(id_priv, NULL);
	if (ret)
		goto reject;

	ret = FUNC2(id_priv, NULL);
	if (ret)
		goto reject;

	ret = FUNC4(id_priv->cm_id.ib, NULL, 0);
	if (ret)
		goto reject;

	return 0;
reject:
	FUNC0(id_priv);
	FUNC3(id_priv->cm_id.ib, IB_CM_REJ_CONSUMER_DEFINED,
		       NULL, 0, NULL, 0);
	return ret;
}