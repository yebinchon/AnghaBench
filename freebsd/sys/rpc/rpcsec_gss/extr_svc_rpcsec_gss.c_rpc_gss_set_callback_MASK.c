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
struct svc_rpc_gss_callback {int /*<<< orphan*/  cb_callback; } ;
typedef  int /*<<< orphan*/  rpc_gss_callback_t ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RPC_GSS_ER_SYSTEMERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct svc_rpc_gss_callback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cb_link ; 
 struct svc_rpc_gss_callback* FUNC2 (int) ; 
 int /*<<< orphan*/  svc_rpc_gss_callbacks ; 
 int /*<<< orphan*/  svc_rpc_gss_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool_t
FUNC5(rpc_gss_callback_t *cb)
{
	struct svc_rpc_gss_callback *scb;

	scb = FUNC2(sizeof(struct svc_rpc_gss_callback));
	if (!scb) {
		FUNC1(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
		return (FALSE);
	}
	scb->cb_callback = *cb;
	FUNC3(&svc_rpc_gss_lock);
	FUNC0(&svc_rpc_gss_callbacks, scb, cb_link);
	FUNC4(&svc_rpc_gss_lock);

	return (TRUE);
}