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
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_addr; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  MNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (struct in_addr const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sockaddr_in *addr, char *path, char *p,
    const struct in_addr *siaddr)
{

	if (FUNC1(&p, &addr->sin_addr) == 0) {
		if (siaddr != NULL && *p == '/')
			FUNC0(siaddr, &addr->sin_addr, sizeof(struct in_addr));
		else
			return 0;
	} else {
		if (*p != ':')
			return 0;
		p++;
	}
		
	addr->sin_len = sizeof(struct sockaddr_in);
	addr->sin_family = AF_INET;

	FUNC2(path, p, MNAMELEN);
	return 1;
}