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
typedef  int u_short ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */

__attribute__((used)) static __inline caddr_t
FUNC0(u_short sel, u_short off)
{
	return ((caddr_t)((sel << 4) + off));
}