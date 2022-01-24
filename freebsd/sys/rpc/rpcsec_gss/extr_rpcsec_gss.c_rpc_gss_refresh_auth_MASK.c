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
struct rpc_gss_data {scalar_t__ gd_state; } ;
typedef  int /*<<< orphan*/  rpc_gss_options_ret_t ;
typedef  int /*<<< orphan*/  options ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RPCSEC_GSS_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(AUTH *auth)
{
	struct rpc_gss_data	*gd;
	rpc_gss_options_ret_t	options;

	gd = FUNC0(auth);
	/*
	 * If the state != ESTABLISHED, try and initialize
	 * the authenticator again. This will happen if the
	 * user's credentials have expired. It may succeed now,
	 * if they have done a kinit or similar.
	 */
	if (gd->gd_state != RPCSEC_GSS_ESTABLISHED) {
		FUNC1(&options, 0, sizeof (options));
		(void) FUNC2(auth, &options);
	}
}