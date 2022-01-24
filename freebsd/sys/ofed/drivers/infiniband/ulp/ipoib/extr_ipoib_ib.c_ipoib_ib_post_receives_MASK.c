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
struct ipoib_dev_priv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,int) ; 
 scalar_t__ FUNC1 (struct ipoib_dev_priv*,int) ; 
 int ipoib_recvq_size ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct ipoib_dev_priv *priv)
{
	int i;

	for (i = 0; i < ipoib_recvq_size; ++i) {
		if (!FUNC0(priv, i)) {
			FUNC2(priv, "failed to allocate receive buffer %d\n", i);
			return -ENOMEM;
		}
		if (FUNC1(priv, i)) {
			FUNC2(priv, "ipoib_ib_post_receive failed for buf %d\n", i);
			return -EIO;
		}
	}

	return 0;
}