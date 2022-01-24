#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svc_callout {struct svc_callout* sc_netid; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
struct TYPE_4__ {int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_callouts; } ;
typedef  TYPE_1__ SVCPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct svc_callout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_callout*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sc_link ; 
 struct svc_callout* FUNC5 (TYPE_1__*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 

void
FUNC6(SVCPOOL *pool, const rpcprog_t prog, const rpcvers_t vers)
{
	struct svc_callout *s;

	/* unregister the information anyway */
	(void) FUNC4(prog, vers, NULL);
	FUNC2(&pool->sp_lock);
	while ((s = FUNC5(pool, prog, vers, NULL)) != NULL) {
		FUNC0(&pool->sp_callouts, s, sc_link);
		if (s->sc_netid)
			FUNC1(s->sc_netid, sizeof (s->sc_netid) + 1);
		FUNC1(s, sizeof (struct svc_callout));
	}
	FUNC3(&pool->sp_lock);
}