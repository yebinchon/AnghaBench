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
struct httpd_thread_statep {int /*<<< orphan*/  hts_fd; } ;
struct TYPE_2__ {int /*<<< orphan*/  listen_sock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* statep ; 

__attribute__((used)) static void *
FUNC3(void *arg)
{
	struct httpd_thread_statep *htsp;
	int sock;

	htsp = arg;

	while (1) {
		sock = FUNC0(statep->listen_sock, NULL, NULL);
		if (sock < 0)
			continue;
		(void)FUNC2(sock, htsp->hts_fd);
		FUNC1(sock);
	}
}