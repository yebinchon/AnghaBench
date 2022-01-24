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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "usage: rpcinfo [-m | -s] [host]\n");
#ifdef PORTMAP
	fprintf(stderr, "       rpcinfo -p [host]\n");
#endif
	FUNC1(stderr, "       rpcinfo -T netid host prognum [versnum]\n");
	FUNC1(stderr, "       rpcinfo -l host prognum versnum\n");
#ifdef PORTMAP
	fprintf(stderr,
"       rpcinfo [-n portnum] -u | -t host prognum [versnum]\n");
#endif
	FUNC1(stderr,
"       rpcinfo -a serv_address -T netid prognum [version]\n");
	FUNC1(stderr, "       rpcinfo -b prognum versnum\n");
	FUNC1(stderr, "       rpcinfo -d [-T netid] prognum versnum\n");
	FUNC0(1);
}