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
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 struct hostent* FUNC2 (char*) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sockaddr_in *
FUNC6(char *host)
{
	struct hostent *hp;
	static struct sockaddr_in reply;

	FUNC1(&reply, sizeof(reply));
	reply.sin_len = sizeof(reply);
	reply.sin_family = AF_INET;
	reply.sin_addr.s_addr = FUNC4(host);
	if (reply.sin_addr.s_addr == INADDR_NONE) {
		if (!(hp = FUNC2(host))) {
			FUNC5("%s: %s", host, FUNC3(h_errno));
			return (NULL);
		}
		FUNC0((char *)hp->h_addr, (char *)&reply.sin_addr,
			sizeof reply.sin_addr);
	}
	return (&reply);
}