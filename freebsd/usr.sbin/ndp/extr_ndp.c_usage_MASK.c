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
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2()
{
	FUNC1("usage: ndp [-nt] hostname\n");
	FUNC1("       ndp [-nt] -a | -c | -p | -r | -H | -P | -R\n");
	FUNC1("       ndp [-nt] -A wait\n");
	FUNC1("       ndp [-nt] -d hostname\n");
	FUNC1("       ndp [-nt] -f filename\n");
	FUNC1("       ndp [-nt] -i interface [flags...]\n");
#ifdef SIOCSDEFIFACE_IN6
	printf("       ndp [-nt] -I [interface|delete]\n");
#endif
	FUNC1("       ndp [-nt] -s nodename etheraddr [temp] [proxy]\n");
	FUNC0(1);
}