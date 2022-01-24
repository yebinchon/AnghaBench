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
struct TYPE_4__ {scalar_t__ typecookie; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  ngddev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 scalar_t__ NGM_DEVICE_COOKIE ; 
#define  NGM_DEVICE_GET_DEVNAME 128 
 char const* NG_DEVICE_DEVNAME ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*,struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int
FUNC9(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC4(node);
	struct ng_mesg *msg;
	struct ng_mesg *resp = NULL;
	const char *dn;
	int error = 0;

	FUNC1(item, msg);

	if (msg->header.typecookie == NGM_DEVICE_COOKIE) {
		switch (msg->header.cmd) {
		case NGM_DEVICE_GET_DEVNAME:
			/* XXX: Fix when MAX_NGD us bigger */
			FUNC3(resp, msg,
			    FUNC8(NG_DEVICE_DEVNAME) + 4, M_NOWAIT);

			if (resp == NULL)
				FUNC0(ENOMEM);

			dn = FUNC6(priv->ngddev);
			FUNC7((char *)resp->data, dn, FUNC8(dn) + 1);
			break;

		default:
			error = EINVAL;
			break;
		}
	} else
		error = EINVAL;

done:
	FUNC5(error, node, item, resp);
	FUNC2(msg);
	return (error);
}