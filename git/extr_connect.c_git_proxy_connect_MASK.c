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
struct child_process {int in; int out; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_GIT_PORT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char**,char const**) ; 
 char const* git_proxy_command ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (struct child_process*) ; 
 struct child_process* FUNC8 (int) ; 

__attribute__((used)) static struct child_process *FUNC9(int fd[2], char *host)
{
	const char *port = FUNC0(DEFAULT_GIT_PORT);
	struct child_process *proxy;

	FUNC5(&host, &port);

	if (FUNC6(host))
		FUNC4(FUNC1("strange hostname '%s' blocked"), host);
	if (FUNC6(port))
		FUNC4(FUNC1("strange port '%s' blocked"), port);

	proxy = FUNC8(sizeof(*proxy));
	FUNC3(proxy);
	FUNC2(&proxy->args, git_proxy_command);
	FUNC2(&proxy->args, host);
	FUNC2(&proxy->args, port);
	proxy->in = -1;
	proxy->out = -1;
	if (FUNC7(proxy))
		FUNC4(FUNC1("cannot start proxy %s"), git_proxy_command);
	fd[0] = proxy->out; /* read from proxy stdout */
	fd[1] = proxy->in;  /* write to proxy stdin */
	return proxy;
}