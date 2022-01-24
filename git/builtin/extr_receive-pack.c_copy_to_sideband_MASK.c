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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ KEEPALIVE_AFTER_NUL ; 
 scalar_t__ KEEPALIVE_ALWAYS ; 
 scalar_t__ KEEPALIVE_NEVER ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int keepalive_in_sec ; 
 char* FUNC1 (char*,char,int) ; 
 int FUNC2 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ use_keepalive ; 
 int /*<<< orphan*/  use_sideband ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,int) ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static int FUNC6(int in, int out, void *arg)
{
	char data[128];
	int keepalive_active = 0;

	if (keepalive_in_sec <= 0)
		use_keepalive = KEEPALIVE_NEVER;
	if (use_keepalive == KEEPALIVE_ALWAYS)
		keepalive_active = 1;

	while (1) {
		ssize_t sz;

		if (keepalive_active) {
			struct pollfd pfd;
			int ret;

			pfd.fd = in;
			pfd.events = POLLIN;
			ret = FUNC2(&pfd, 1, 1000 * keepalive_in_sec);

			if (ret < 0) {
				if (errno == EINTR)
					continue;
				else
					break;
			} else if (ret == 0) {
				/* no data; send a keepalive packet */
				static const char buf[] = "0005\1";
				FUNC4(1, buf, sizeof(buf) - 1);
				continue;
			} /* else there is actual data to read */
		}

		sz = FUNC5(in, data, sizeof(data));
		if (sz <= 0)
			break;

		if (use_keepalive == KEEPALIVE_AFTER_NUL && !keepalive_active) {
			const char *p = FUNC1(data, '\0', sz);
			if (p) {
				/*
				 * The NUL tells us to start sending keepalives. Make
				 * sure we send any other data we read along
				 * with it.
				 */
				keepalive_active = 1;
				FUNC3(1, 2, data, p - data, use_sideband);
				FUNC3(1, 2, p + 1, sz - (p - data + 1), use_sideband);
				continue;
			}
		}

		/*
		 * Either we're not looking for a NUL signal, or we didn't see
		 * it yet; just pass along the data.
		 */
		FUNC3(1, 2, data, sz, use_sideband);
	}
	FUNC0(in);
	return 0;
}