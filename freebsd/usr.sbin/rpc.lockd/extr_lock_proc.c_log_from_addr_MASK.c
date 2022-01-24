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
struct svc_req {int /*<<< orphan*/  rq_xprt; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct TYPE_2__ {struct sockaddr* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int NI_MAXHOST ; 
 scalar_t__ FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 

__attribute__((used)) static void
FUNC3(const char *fun_name, struct svc_req *req)
{
	struct sockaddr *addr;
	char hostname_buf[NI_MAXHOST];

	addr = FUNC1(req->rq_xprt)->buf;
	if (FUNC0(addr , addr->sa_len, hostname_buf, sizeof hostname_buf,
	    NULL, 0, 0) != 0)
		return;

	FUNC2(LOG_DEBUG, "%s from %s", fun_name, hostname_buf);
}