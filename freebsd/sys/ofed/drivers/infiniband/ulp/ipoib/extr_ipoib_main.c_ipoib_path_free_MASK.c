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
struct ipoib_path {scalar_t__ ah; int /*<<< orphan*/  queue; } ;
struct ipoib_dev_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_path*) ; 

void
FUNC5(struct ipoib_dev_priv *priv, struct ipoib_path *path)
{

	FUNC0(&path->queue);

	if (path->ah)
		FUNC3(path->ah);
	if (FUNC2(path))
		FUNC1(FUNC2(path));

	FUNC4(path);
}