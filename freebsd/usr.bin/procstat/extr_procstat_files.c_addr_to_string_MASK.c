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
struct sockaddr_un {char* sun_path; } ;
struct sockaddr_storage {int ss_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
typedef  int /*<<< orphan*/  buffer2 ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_LOCAL 128 
 int /*<<< orphan*/  INADDR_ANY ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/ * FUNC0 (int const,TYPE_1__*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct sockaddr_storage *ss, char *buffer, int buflen)
{
	char buffer2[INET6_ADDRSTRLEN];
	struct sockaddr_in6 *sin6;
	struct sockaddr_in *sin;
	struct sockaddr_un *sun;

	switch (ss->ss_family) {
	case AF_LOCAL:
		sun = (struct sockaddr_un *)ss;
		if (FUNC4(sun->sun_path) == 0)
			FUNC3(buffer, "-", buflen);
		else
			FUNC3(buffer, sun->sun_path, buflen);
		break;

	case AF_INET:
		sin = (struct sockaddr_in *)ss;
		if (sin->sin_addr.s_addr == INADDR_ANY)
		    FUNC2(buffer, buflen, "%s:%d", "*",
		        FUNC1(sin->sin_port));
		else if (FUNC0(AF_INET, &sin->sin_addr, buffer2,
		    sizeof(buffer2)) != NULL)
			FUNC2(buffer, buflen, "%s:%d", buffer2,
		            FUNC1(sin->sin_port));
		break;

	case AF_INET6:
		sin6 = (struct sockaddr_in6 *)ss;
		if (FUNC0(AF_INET6, &sin6->sin6_addr, buffer2,
		    sizeof(buffer2)) != NULL)
			FUNC2(buffer, buflen, "%s.%d", buffer2,
			    FUNC1(sin6->sin6_port));
		else
			FUNC3(buffer, "-", buflen);
		break;

	default:
		FUNC3(buffer, "", buflen);
		break;
	}
}