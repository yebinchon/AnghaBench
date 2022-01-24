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
struct ipoib_dev_priv {int /*<<< orphan*/  dead_ahs; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ipoib_dev_priv *priv)
{
	unsigned long begin;

	begin = jiffies;

	while (!FUNC2(&priv->dead_ahs)) {
		FUNC0(priv);

		if (FUNC4(jiffies, begin + HZ)) {
			FUNC1(priv, "timing out; will leak address handles\n");
			break;
		}

		FUNC3(1);
	}
}