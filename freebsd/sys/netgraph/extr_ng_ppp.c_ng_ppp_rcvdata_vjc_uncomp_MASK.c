#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_4__ {int /*<<< orphan*/  enableVJCompression; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  PROT_VJUNCOMP ; 
 int FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(hook_p hook, item_p item)
{
	const node_p node = FUNC1(hook);
	const priv_p priv = FUNC2(node);

	if (!priv->conf.enableVJCompression) {
		FUNC0(item);
		return (ENXIO);
	}
	return (FUNC3(node, item, PROT_VJUNCOMP));
}