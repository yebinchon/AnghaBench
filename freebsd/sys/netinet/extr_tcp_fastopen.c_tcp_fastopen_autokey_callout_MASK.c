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
struct tcp_fastopen_callout {int /*<<< orphan*/  c; int /*<<< orphan*/  v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int V_tcp_fastopen_autokey ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void (*) (void*),struct tcp_fastopen_callout*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct tcp_fastopen_callout *ctx = arg;

	FUNC1(ctx->v);
	FUNC3();
	FUNC2(&ctx->c, V_tcp_fastopen_autokey * hz,
		      tcp_fastopen_autokey_callout, ctx);
	FUNC0();
}