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
typedef  int /*<<< orphan*/  u_long ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_DEFAULT_FIB ; 
 struct rtentry* FUNC0 (struct sockaddr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rtentry *
FUNC1(struct sockaddr *dst, int report, u_long ignflags)
{

	return (FUNC0(dst, report, ignflags, RT_DEFAULT_FIB));
}