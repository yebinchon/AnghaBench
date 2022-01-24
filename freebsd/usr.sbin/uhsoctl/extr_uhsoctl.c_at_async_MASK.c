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
struct ctx {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  (* func ) (void*,char*) ;int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 TYPE_1__* async_cmd ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*,int) ; 

__attribute__((used)) static int
FUNC7(struct ctx *ctx, void *arg)
{
	int n, i;
	size_t l;
	char buf[512];

	FUNC6(ctx, 15);

	FUNC0(buf, sizeof(buf));	
	n = FUNC2(ctx->fd, buf, sizeof(buf));	
	if (n <= 0)
		return (n <= 0 ? -1 : 0);

#ifdef DEBUG
	fprintf(stderr, "AT_ASYNC_RESP: %s", buf);
#endif
	for (i = 0; async_cmd[i].cmd != NULL; i++) {
		l = FUNC3(async_cmd[i].cmd);
		if (FUNC4(buf, async_cmd[i].cmd, l) == 0) {
			async_cmd[i].func(arg, buf);
		}
	}
	return (0);
}