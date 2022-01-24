#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct priv {int enabled; int /*<<< orphan*/  sscf; } ;
struct ng_sscfu_getdefparam {int /*<<< orphan*/  param; int /*<<< orphan*/  mask; } ;
struct TYPE_2__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int EISCONN ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_GENERIC_COOKIE 136 
#define  NGM_SSCFU_COOKIE 135 
#define  NGM_SSCFU_DISABLE 134 
#define  NGM_SSCFU_ENABLE 133 
#define  NGM_SSCFU_GETDEBUG 132 
#define  NGM_SSCFU_GETDEFPARAM 131 
#define  NGM_SSCFU_GETSTATE 130 
#define  NGM_SSCFU_SETDEBUG 129 
#define  NGM_TEXT_STATUS 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 struct priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int NG_TEXTRESPONSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct priv*,char*,int) ; 

__attribute__((used)) static int
FUNC11(node_p node, item_p item, hook_p lasthook)
{
	struct priv *priv = FUNC3(node);
	struct ng_mesg *resp = NULL;
	struct ng_mesg *msg;
	int error = 0;

	FUNC0(item, msg);

	switch (msg->header.typecookie) {

	  case NGM_GENERIC_COOKIE:
		switch (msg->header.cmd) {

		  case NGM_TEXT_STATUS:
			FUNC2(resp, msg, NG_TEXTRESPONSE, M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			resp->header.arglen = FUNC10(node, priv,
			    (char *)resp->data, resp->header.arglen) + 1;
			break;

		  default:
			error = EINVAL;
			break;
		}
		break;

	  case NGM_SSCFU_COOKIE:
		switch (msg->header.cmd) {

		  case NGM_SSCFU_GETDEFPARAM:
		    {
			struct ng_sscfu_getdefparam *p;

			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			FUNC2(resp, msg, sizeof(*p), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			p = (struct ng_sscfu_getdefparam *)resp->data;
			p->mask = FUNC6(&p->param);
			break;
		    }

		  case NGM_SSCFU_ENABLE:
			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			if (priv->enabled) {
				error = EISCONN;
				break;
			}
			priv->enabled = 1;
			break;

		  case NGM_SSCFU_DISABLE:
			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			if (!priv->enabled) {
				error = ENOTCONN;
				break;
			}
			priv->enabled = 0;
			FUNC8(priv->sscf);
			break;

		  case NGM_SSCFU_GETSTATE:
			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			FUNC2(resp, msg, sizeof(uint32_t), M_NOWAIT);
			if(resp == NULL) {
				error = ENOMEM;
				break;
			}
			*(uint32_t *)resp->data =
			    priv->enabled ? (FUNC7(priv->sscf) + 1)
			                  : 0;
			break;

		  case NGM_SSCFU_GETDEBUG:
			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			FUNC2(resp, msg, sizeof(uint32_t), M_NOWAIT);
			if(resp == NULL) {
				error = ENOMEM;
				break;
			}
			*(uint32_t *)resp->data = FUNC5(priv->sscf);
			break;

		  case NGM_SSCFU_SETDEBUG:
			if (msg->header.arglen != sizeof(uint32_t)) {
				error = EINVAL;
				break;
			}
			FUNC9(priv->sscf, *(uint32_t *)msg->data);
			break;

		  default:
			error = EINVAL;
			break;
		}
		break;

	  default:
		error = EINVAL;
		break;
	}

	FUNC4(error, node, item, resp);
	FUNC1(msg);

	return (error);
}