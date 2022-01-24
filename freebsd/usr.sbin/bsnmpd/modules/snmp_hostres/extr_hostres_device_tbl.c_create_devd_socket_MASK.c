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
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  devd_addr ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  PATH_DEVD_PIPE ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void)
{
	int d_sock;
 	struct sockaddr_un devd_addr;

 	FUNC0(&devd_addr, sizeof(struct sockaddr_un));

 	if ((d_sock = FUNC3(PF_LOCAL, SOCK_STREAM, 0)) < 0) {
 		FUNC5(LOG_ERR, "Failed to create the socket for %s: %m",
		    PATH_DEVD_PIPE);
 		return (-1);
 	}

 	devd_addr.sun_family = PF_LOCAL;
	devd_addr.sun_len = sizeof(devd_addr);
 	FUNC4(devd_addr.sun_path, PATH_DEVD_PIPE,
	    sizeof(devd_addr.sun_path) - 1);

 	if (FUNC2(d_sock, (struct sockaddr *)&devd_addr,
	    sizeof(devd_addr)) == -1) {
 		FUNC5(LOG_ERR,"Failed to connect socket for %s: %m",
		    PATH_DEVD_PIPE);
 		if (FUNC1(d_sock) < 0 )
 			FUNC5(LOG_ERR,"Failed to close socket for %s: %m",
			    PATH_DEVD_PIPE);
		return (-1);
 	}

 	return (d_sock);
}