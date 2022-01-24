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
struct TYPE_4__ {scalar_t__ typecookie; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  scalar_t__ hook_p ;
struct TYPE_5__ {scalar_t__ downlink; scalar_t__ uplink; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ng_mesg* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NGM_FLOW_COOKIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(node_p node, item_p item, hook_p lasthook)
{
	int	error;
	const priv_p priv = FUNC3(node);
	struct ng_mesg *msg;

	msg = FUNC0(item); /* only peeking */
	if ((msg->header.typecookie == NGM_FLOW_COOKIE) && lasthook)  {
		if (lasthook == priv->downlink) {
			if (priv->uplink) {
				FUNC2(error, item, priv->uplink);
				return (error);
			}
		} else {
			if (priv->downlink) {
				FUNC2(error, item, priv->downlink);
				return (error);
			}
		}
	}
		
	FUNC1(item);
	return (EINVAL);
}