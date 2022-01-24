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
struct yp_data {int /*<<< orphan*/ * yp_trans_tcp; int /*<<< orphan*/ * yp_trans_udp; int /*<<< orphan*/  yd_events; } ;
struct env {struct yp_data* sc_yp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  RPC_ANYSOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  YPPROG ; 
 int /*<<< orphan*/  YPVERS ; 
 struct yp_data* FUNC1 (int,int) ; 
 struct env* env ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yp_dispatch ; 

void
FUNC7(struct env *x_env)
{
	struct yp_data	*yp;

	if ((yp = FUNC1(1, sizeof(*yp))) == NULL)
		FUNC2(NULL);
	FUNC0(&yp->yd_events);

	env = x_env;
	env->sc_yp = yp;
	
	(void)FUNC3(YPPROG, YPVERS);

	if ((yp->yp_trans_udp = FUNC6(RPC_ANYSOCK)) == NULL)
		FUNC2("cannot create udp service");
	if ((yp->yp_trans_tcp = FUNC5(RPC_ANYSOCK, 0, 0)) == NULL)
		FUNC2("cannot create tcp service");

	if (!FUNC4(yp->yp_trans_udp, YPPROG, YPVERS,
	    yp_dispatch, IPPROTO_UDP)) {
		FUNC2("unable to register (YPPROG, YPVERS, udp)");
	}
	if (!FUNC4(yp->yp_trans_tcp, YPPROG, YPVERS,
	    yp_dispatch, IPPROTO_TCP)) {
		FUNC2("unable to register (YPPROG, YPVERS, tcp)");
	}
}