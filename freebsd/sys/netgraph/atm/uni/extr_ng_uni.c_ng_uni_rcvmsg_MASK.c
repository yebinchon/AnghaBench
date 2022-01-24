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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  size_t u_int ;
struct uni_config {int dummy; } ;
struct priv {int enabled; int /*<<< orphan*/  uni; } ;
struct ngm_uni_config_mask {int /*<<< orphan*/  option_mask; int /*<<< orphan*/  popt_mask; int /*<<< orphan*/  mask; } ;
struct ngm_uni_set_config {int /*<<< orphan*/  config; struct ngm_uni_config_mask mask; } ;
struct ngm_uni_debug {int /*<<< orphan*/ * level; } ;
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
#define  NGM_GENERIC_COOKIE 137 
#define  NGM_TEXT_STATUS 136 
#define  NGM_UNI_COOKIE 135 
#define  NGM_UNI_DISABLE 134 
#define  NGM_UNI_ENABLE 133 
#define  NGM_UNI_GETDEBUG 132 
#define  NGM_UNI_GETSTATE 131 
#define  NGM_UNI_GET_CONFIG 130 
#define  NGM_UNI_SETDEBUG 129 
#define  NGM_UNI_SET_CONFIG 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 struct priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int NG_TEXTRESPONSE ; 
 size_t UNI_MAXFACILITY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct uni_config*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(node_p node, item_p item, hook_p lasthook)
{
	struct priv *priv = FUNC3(node);
	struct ng_mesg *resp = NULL;
	struct ng_mesg *msg;
	int error = 0;
	u_int i;

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

			resp->header.arglen = FUNC5(node, priv,
			    (char *)resp->data, resp->header.arglen) + 1;
			break;

		  default:
			error = EINVAL;
			break;
		}
		break;

	  case NGM_UNI_COOKIE:
		switch (msg->header.cmd) {

		  case NGM_UNI_SETDEBUG:
		    {
			struct ngm_uni_debug *arg;

			if (msg->header.arglen > sizeof(*arg)) {
				error = EINVAL;
				break;
			}
			arg = (struct ngm_uni_debug *)msg->data;
			for (i = 0; i < UNI_MAXFACILITY; i++)
				FUNC11(priv->uni, i, arg->level[i]);
			break;
		    }

		  case NGM_UNI_GETDEBUG:
		    {
			struct ngm_uni_debug *arg;

			FUNC2(resp, msg, sizeof(*arg), M_NOWAIT);
			if(resp == NULL) {
				error = ENOMEM;
				break;
			}
			arg = (struct ngm_uni_debug *)resp->data;
			for (i = 0; i < UNI_MAXFACILITY; i++)
				arg->level[i] = FUNC7(priv->uni, i);
			break;
		    }

		  case NGM_UNI_GET_CONFIG:
		    {
			struct uni_config *config;

			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			FUNC2(resp, msg, sizeof(*config), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			config = (struct uni_config *)resp->data;
			FUNC6(priv->uni, config);

			break;
		    }

		  case NGM_UNI_SET_CONFIG:
		    {
			struct ngm_uni_set_config *arg;
			struct ngm_uni_config_mask *mask;

			if (msg->header.arglen != sizeof(*arg)) {
				error = EINVAL;
				break;
			}
			arg = (struct ngm_uni_set_config *)msg->data;

			FUNC2(resp, msg, sizeof(*mask), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			mask = (struct ngm_uni_config_mask *)resp->data;

			*mask = arg->mask;

			FUNC10(priv->uni, &arg->config,
			    &mask->mask, &mask->popt_mask, &mask->option_mask);

			break;
		    }

		  case NGM_UNI_ENABLE:
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

		  case NGM_UNI_DISABLE:
			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			if (!priv->enabled) {
				error = ENOTCONN;
				break;
			}
			priv->enabled = 0;
			FUNC9(priv->uni);
			break;

		  case NGM_UNI_GETSTATE:
			if (msg->header.arglen != 0) {
				error = EINVAL;
				break;
			}
			FUNC2(resp, msg, sizeof(u_int32_t), M_NOWAIT);
			if(resp == NULL) {
				error = ENOMEM;
				break;
			}
			*(u_int32_t *)resp->data =
			    priv->enabled ? (FUNC8(priv->uni) + 1)
			                  : 0;
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