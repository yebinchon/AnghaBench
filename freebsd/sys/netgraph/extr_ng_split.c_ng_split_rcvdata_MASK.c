#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  scalar_t__ item_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_3__ {int /*<<< orphan*/ * out; int /*<<< orphan*/ * mixed; int /*<<< orphan*/ * in; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(hook_p hook, item_p item)
{
	const priv_p	priv = FUNC3(FUNC2(hook));
	int		error = 0;

	if (hook == priv->out) {
		FUNC4("ng_split: got packet from out hook!\n");
		FUNC0(item);
		error = EINVAL;
	} else if ((hook == priv->in) && (priv->mixed != NULL)) {
		FUNC1(error, item, priv->mixed);
	} else if ((hook == priv->mixed) && (priv->out != NULL)) {
		FUNC1(error, item, priv->out);
	}

	if (item)
		FUNC0(item);

	return (error);
}