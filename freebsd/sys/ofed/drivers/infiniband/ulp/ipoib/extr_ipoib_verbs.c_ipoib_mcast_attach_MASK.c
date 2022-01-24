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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u16 ;
struct ipoib_dev_priv {int /*<<< orphan*/  qp; int /*<<< orphan*/  qkey; int /*<<< orphan*/  flags; int /*<<< orphan*/  pkey; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;
struct ib_qp_attr {int /*<<< orphan*/  qkey; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_QP_QKEY ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,union ib_gid*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_qp_attr*) ; 
 struct ib_qp_attr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct ipoib_dev_priv *priv, u16 mlid, union ib_gid *mgid, int set_qkey)
{
	struct ib_qp_attr *qp_attr = NULL;
	int ret;
	u16 pkey_index;

	if (FUNC2(priv->ca, priv->port, priv->pkey, &pkey_index)) {
		FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);
		ret = -ENXIO;
		goto out;
	}
	FUNC7(IPOIB_PKEY_ASSIGNED, &priv->flags);

	if (set_qkey) {
		ret = -ENOMEM;
		qp_attr = FUNC6(sizeof *qp_attr, GFP_KERNEL);
		if (!qp_attr)
			goto out;

		/* set correct QKey for QP */
		qp_attr->qkey = priv->qkey;
		ret = FUNC3(priv->qp, qp_attr, IB_QP_QKEY);
		if (ret) {
			FUNC4(priv, "failed to modify QP, ret = %d\n", ret);
			goto out;
		}
	}

	/* attach QP to multicast group */
	ret = FUNC1(priv->qp, mgid, mlid);
	if (ret)
		FUNC4(priv, "failed to attach to multicast group, ret = %d\n", ret);

out:
	FUNC5(qp_attr);
	return ret;
}