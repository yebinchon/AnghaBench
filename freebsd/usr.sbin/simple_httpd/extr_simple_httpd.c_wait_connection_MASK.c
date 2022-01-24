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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ con_sock ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  http_sock ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  source ; 

__attribute__((used)) static void
FUNC3(void)
{
	socklen_t lg;

	lg = sizeof(struct sockaddr_in);

	con_sock = FUNC0(http_sock, (struct sockaddr *) & source, &lg);
	if (con_sock <= 0) {
		FUNC2("accept");
		FUNC1(1);
	}
}