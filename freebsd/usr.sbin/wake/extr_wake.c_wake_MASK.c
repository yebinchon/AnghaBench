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
struct ether_addr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct ether_addr*) ; 
 int FUNC1 (int,struct ether_addr*) ; 

__attribute__((used)) static int
FUNC2(int bpf, const char *host)
{
	struct ether_addr macaddr;

	if (FUNC0(host, &macaddr) == -1)
		return (-1);

	return (FUNC1(bpf, &macaddr));
}