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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(int sockfd, int *recv_fd)
{
	char ch = 0;

	FUNC1(sockfd, recv_fd, &ch, sizeof(ch),
	    FUNC0(sizeof(int)));
}