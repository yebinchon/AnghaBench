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
typedef  int /*<<< orphan*/  sun ;
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int ITERATIONS ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct sockaddr_un sun;
	ssize_t len;
	char c = 0;
	int fd, i;

	FUNC0(&sun, sizeof(sun));
	sun.sun_len = sizeof(sun);
	sun.sun_family = AF_UNIX;
	FUNC4(sun.sun_path, socket_path);
	for (i = 0; i < ITERATIONS; i++) {
		fd = FUNC3(PF_UNIX, SOCK_STREAM, 0);
		if (fd < 0) {
			FUNC5("stream_client: socket");
			return;
		}
		len = FUNC2(fd, &c, sizeof(c), 0, (struct sockaddr *)&sun,
		    sizeof(sun));
		if (len < 0)
			FUNC5("stream_client: sendto");
		FUNC1(fd);
	}
}