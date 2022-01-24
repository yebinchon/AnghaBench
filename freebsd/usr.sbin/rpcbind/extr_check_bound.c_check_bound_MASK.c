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
struct sockaddr {int dummy; } ;
struct netbuf {struct netbuf* buf; int /*<<< orphan*/  len; } ;
struct fdlist {scalar_t__ check_binding; int /*<<< orphan*/  nconf; } ;
typedef  scalar_t__ bool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct netbuf*) ; 
 struct netbuf* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool_t
FUNC5(struct fdlist *fdl, char *uaddr)
{
	int fd;
	struct netbuf *na;
	int ans;

	if (fdl->check_binding == FALSE)
		return (TRUE);

	na = FUNC4(fdl->nconf, uaddr);
	if (!na)
		return (TRUE); /* punt, should never happen */

	fd = FUNC0(fdl->nconf);
	if (fd < 0) {
		FUNC3(na->buf);
		FUNC3(na);
		return (TRUE);
	}

	ans = FUNC1(fd, (struct sockaddr *)na->buf, na->len);

	FUNC2(fd);
	FUNC3(na->buf);
	FUNC3(na);

	return (ans == 0 ? FALSE : TRUE);
}