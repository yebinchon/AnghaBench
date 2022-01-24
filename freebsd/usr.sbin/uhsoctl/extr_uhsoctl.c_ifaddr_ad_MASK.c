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
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct ifaliasreq {int /*<<< orphan*/  ifra_mask; int /*<<< orphan*/  ifra_addr; int /*<<< orphan*/  ifra_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaliasreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC6(unsigned long d, const char *ifnam, struct sockaddr *sa, struct sockaddr *mask)
{
	struct ifaliasreq req;
	int fd, error;

	fd = FUNC4(AF_INET, SOCK_DGRAM, 0);
	if (fd < 0)
		return (-1);

	FUNC3(&req, 0, sizeof(struct ifaliasreq));
	FUNC5(req.ifra_name, ifnam, sizeof(req.ifra_name));
	FUNC2(&req.ifra_addr, sa, sa->sa_len);
	FUNC2(&req.ifra_mask, mask, mask->sa_len);

	error = FUNC1(fd, d, (char *)&req);
	FUNC0(fd);
	return (error);
}