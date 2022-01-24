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
struct child_process {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 struct child_process no_fork ; 

__attribute__((used)) static struct child_process *FUNC2(int fd[2], char *host, int flags)
{
	int sockfd = FUNC1(host, flags);

	fd[0] = sockfd;
	fd[1] = FUNC0(sockfd);

	return &no_fork;
}