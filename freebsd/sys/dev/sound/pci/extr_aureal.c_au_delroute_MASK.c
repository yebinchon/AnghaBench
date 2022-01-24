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
struct au_info {int* z; int* y; int* x; int /*<<< orphan*/  routes; } ;

/* Variables and functions */
 scalar_t__ AU_REG_RTBASE ; 
 int FUNC0 (struct au_info*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct au_info*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC3(struct au_info *au, int route)
{
	int i;
	int j=au->z[route];

	FUNC1(au->routes, route, 0);
	au->z[route]=0x1f;
	i=FUNC0(au, 0, AU_REG_RTBASE+(route<<2), 4);
	FUNC2(au, 0, AU_REG_RTBASE+(au->y[route]<<2), i, 4);
	au->y[i & 0x7f]=au->y[route];
	FUNC2(au, 0, AU_REG_RTBASE+(route<<2), 0xfffffffe, 4);
	if (au->x[j] == route) au->x[j]=au->y[route];
	au->y[route]=0x7f;
}