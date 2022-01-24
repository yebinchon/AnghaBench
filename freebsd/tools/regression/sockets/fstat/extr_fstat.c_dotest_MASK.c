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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int,int) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (int,int,int) ; 

__attribute__((used)) static void
FUNC4(int domain, int type, int protocol)
{
	struct stat sb;
	int sock;

	sock = FUNC3(domain, type, protocol);
	if (sock < 0)
		FUNC1(-1, "socket(%d, %d, %d)", domain, type, protocol);

	if (FUNC2(sock, &sb) < 0)
		FUNC1(-1, "fstat on socket(%d, %d, %d)", domain, type,
		    protocol);

	FUNC0(sock);
}