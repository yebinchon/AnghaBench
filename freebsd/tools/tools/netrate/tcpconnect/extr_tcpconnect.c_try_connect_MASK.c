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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct fd_set {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,struct fd_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct fd_set*) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,struct fd_set*,struct fd_set*,struct fd_set*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_fired ; 

__attribute__((used)) static int
FUNC9(struct sockaddr_in *sin)
{
	struct 
	fd_set read_set;
	int i, s;

	s = FUNC8(PF_INET, SOCK_STREAM, 0);
	if (s < 0)
		FUNC4(-1, "socket(PF_INET, SOCK_STREAM)");

	i = 1;
	if (FUNC5(s, F_SETFL, FIONBIO, &i) < 0)
		FUNC4(-1, "fcntl(s, FIOBIO, 1)");

	FUNC1(&read_set);
	FUNC0(s, &read_set);

	if (FUNC3(s, (struct sockaddr *)sin, sizeof(*sin)) < 0 &&
	    errno != EINPROGRESS)
		FUNC4(-1, "connect(%s)", FUNC6(sin->sin_addr));

	if (FUNC7(s + 1, &read_set, &read_set, &read_set, NULL) < 0) {
		if ((errno == EINTR && !timer_fired) || (errno != EINTR))
			FUNC4(-1, "select");
		return (-1);
	}

	FUNC2(s);
	return (0);
}