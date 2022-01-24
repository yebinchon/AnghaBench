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
struct nmreq_option {int nro_reqtype; uintptr_t nro_next; } ;
struct TestContext {char* ifname_ext; } ;

/* Variables and functions */
 scalar_t__ EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct TestContext*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nmreq_option*,struct TestContext*) ; 

__attribute__((used)) static int
FUNC4(struct TestContext *ctx)
{
	struct nmreq_option opt;

	FUNC2("Testing infinite list of options on %s\n", ctx->ifname_ext);

	opt.nro_reqtype = 1234;
	FUNC3(&opt, ctx);
	opt.nro_next = (uintptr_t)&opt;
	if (FUNC1(ctx) >= 0)
		return -1;
	FUNC0(ctx);
	return (errno == EMSGSIZE ? 0 : -1);
}