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
struct ccnode {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int /*<<< orphan*/  M_NG_CCATM ; 
 struct ccnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	struct ccnode *priv = FUNC0(node);

	FUNC3(priv->data);

	FUNC4(priv, M_NG_CCATM);
	FUNC1(node, NULL);

	FUNC2(node);

	return (0);
}