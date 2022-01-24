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
struct priv {void* upper; void* lower; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  void* hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 struct priv* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_uni_rcvupper ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(node_p node, hook_p hook, const char *name)
{
	struct priv *priv = FUNC1(node);

	if (FUNC2(name, "lower") == 0) {
		priv->lower = hook;
	} else if(FUNC2(name, "upper") == 0) {
		priv->upper = hook;
		FUNC0(hook, ng_uni_rcvupper);
	} else
		return EINVAL;

	return 0;
}