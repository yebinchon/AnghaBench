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
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC1 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int sockfd, int send_fd)
{
	size_t len;
	char ch;

	ch = 0;
	len = FUNC1(sockfd, send_fd, &ch, sizeof(ch));
	FUNC0(len == sizeof(ch),
	    "sendmsg: %zu bytes sent; expected %zu; %s", len, sizeof(ch),
	    FUNC2(errno));
}