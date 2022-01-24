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
typedef  scalar_t__ uint16_t ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
struct TYPE_4__ {scalar_t__ enableVJCompression; } ;
struct TYPE_5__ {int /*<<< orphan*/ * hooks; scalar_t__ vjCompHooked; TYPE_1__ conf; } ;

/* Variables and functions */
 size_t HOOK_INDEX_VJC_IP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROT_IP ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(node_p node, item_p item, uint16_t proto)
{
	const priv_p priv = FUNC1(node);

	if (proto == PROT_IP &&
	    priv->conf.enableVJCompression &&
	    priv->vjCompHooked) {
		int error;

		/* Send packet out hook. */
		FUNC0(error, item, priv->hooks[HOOK_INDEX_VJC_IP]);
		return (error);
	}

	return (FUNC2(node, item, proto));
}