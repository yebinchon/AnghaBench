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

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* sock_fd ; 
 int sock_fdcnt ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i;

	for (i = 0; i < sock_fdcnt; i++) {
		if (sock_fd[i] >= 0) {
			FUNC1(sock_fd[i], SHUT_RDWR);
			FUNC0(sock_fd[i]);
		}
	}
}