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
typedef  int /*<<< orphan*/  u_int ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,struct sockaddr*,struct sockaddr*,int,struct sockaddr*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct sockaddr *dst, struct sockaddr *gw, struct sockaddr *nm,
    int flags, struct sockaddr *src, u_int fibnum)
{

	FUNC0(dst, gw, nm, flags, src, fibnum);
}