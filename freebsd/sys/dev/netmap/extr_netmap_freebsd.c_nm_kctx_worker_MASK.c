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
struct nm_kctx_ctx {int /*<<< orphan*/  worker_private; int /*<<< orphan*/  (* worker_fn ) (int /*<<< orphan*/ ) ;scalar_t__ user_td; } ;
struct nm_kctx {scalar_t__ affinity; scalar_t__ run; struct nm_kctx_ctx worker_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curproc ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *data)
{
	struct nm_kctx *nmk = data;
	struct nm_kctx_ctx *ctx = &nmk->worker_ctx;

	if (nmk->affinity >= 0) {
		FUNC6(curthread);
		FUNC4(curthread, nmk->affinity);
		FUNC8(curthread);
	}

	while (nmk->run) {
		/*
		 * check if the parent process dies
		 * (when kthread is attached to user process)
		 */
		if (ctx->user_td) {
			FUNC0(curproc);
			FUNC7(0);
			FUNC1(curproc);
		} else {
			FUNC3();
		}

		/* Continuously execute worker process. */
		ctx->worker_fn(ctx->worker_private); /* worker body */
	}

	FUNC2();
}