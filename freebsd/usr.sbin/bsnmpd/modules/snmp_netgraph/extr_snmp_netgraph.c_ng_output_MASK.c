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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int,int,void const*,size_t) ; 
 int /*<<< orphan*/  csock ; 

int
FUNC1(const char *path, u_int cookie, u_int opcode,
    const void *arg, size_t arglen)
{
	return (FUNC0(csock, path, (int)cookie, (int)opcode, arg, arglen));
}