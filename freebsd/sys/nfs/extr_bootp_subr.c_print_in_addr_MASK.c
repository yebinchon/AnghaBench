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
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct in_addr addr)
{
	unsigned int ip;

	ip = FUNC0(addr.s_addr);
	FUNC1("%d.%d.%d.%d",
	       ip >> 24, (ip >> 16) & 255, (ip >> 8) & 255, ip & 255);
}