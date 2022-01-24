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
struct ng_rfc1490_encap_t {int /*<<< orphan*/  name; int /*<<< orphan*/  method; } ;
struct TYPE_4__ {scalar_t__ typecookie; int cmd; int /*<<< orphan*/  arglen; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {struct ng_rfc1490_encap_t const* enc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 scalar_t__ NGM_RFC1490_COOKIE ; 
#define  NGM_RFC1490_GET_ENCAP 129 
#define  NGM_RFC1490_SET_ENCAP 128 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*,struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 struct ng_rfc1490_encap_t* ng_rfc1490_encaps ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int
FUNC9(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC4(node);
	struct ng_mesg *msg;
	struct ng_mesg *resp = NULL;
	int error = 0;

	FUNC1(item, msg);

	if (msg->header.typecookie == NGM_RFC1490_COOKIE) {
		switch (msg->header.cmd) {
		case NGM_RFC1490_SET_ENCAP:
		{
			const struct ng_rfc1490_encap_t *enc;
			char *s;
			size_t len;

			if (msg->header.arglen == 0)
				FUNC0(EINVAL);

			s = (char *)msg->data;
			len = msg->header.arglen - 1;

			/* Search for matching encapsulation method */
			for (enc = ng_rfc1490_encaps; enc->method != 0; enc++ )
				if ((FUNC7(enc->name) == len) &&
				    !FUNC8(enc->name, s, len))
					break;	/* found */

			if (enc->method != 0)
				priv->enc = enc;
			else
				error = EINVAL;
			break;
		}
		case NGM_RFC1490_GET_ENCAP:

			FUNC3(resp, msg, FUNC7(priv->enc->name) + 1, M_NOWAIT);
			if (resp == NULL)
				FUNC0(ENOMEM);

			FUNC6((char *)resp->data, priv->enc->name,
			    FUNC7(priv->enc->name) + 1);
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