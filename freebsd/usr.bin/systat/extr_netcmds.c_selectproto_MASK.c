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
 int TCP ; 
 int UDP ; 
 int protos ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *proto)
{

	if (proto == NULL || FUNC0(proto, "all"))
		protos = TCP | UDP;
	else if (FUNC0(proto, "tcp"))
		protos = TCP;
	else if (FUNC0(proto, "udp"))
		protos = UDP;
	else
		return (0);

	return (protos);
}