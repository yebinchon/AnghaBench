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
struct ctx {int dbm; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_NEWDATA ; 
 int FUNC0 (char const*,char*,int*) ; 
 int /*<<< orphan*/  timers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct ctx*) ; 
 int /*<<< orphan*/  tmr_status ; 

__attribute__((used)) static void
FUNC2(void *arg, const char *resp)
{
	struct ctx *ctx = arg;
	int n, rssi;

	n = FUNC0(resp, "+CSQ: %d,%*d", &rssi);
	if (n != 1)
		return;
	if (rssi == 99)
		ctx->dbm = 0;
	else {
		ctx->dbm = (rssi * 2) - 113;
		FUNC1(&timers, 1, 15, tmr_status, ctx);
	}

	ctx->flags |= FLG_NEWDATA;
}