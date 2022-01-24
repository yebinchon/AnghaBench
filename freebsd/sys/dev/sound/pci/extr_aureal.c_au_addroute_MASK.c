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
struct au_info {int* x; int* y; int* z; int /*<<< orphan*/  routes; } ;

/* Variables and functions */
 int AU_REG_RTBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct au_info*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC2(struct au_info *au, int a, int b, int route)
{
	int j = 0x1099c+(a<<2);
	if (au->x[a] != a+0x67) j = AU_REG_RTBASE+(au->x[a]<<2);

	FUNC1(au, 0, AU_REG_RTBASE+(route<<2), 0xffffffff, 4);
 	FUNC1(au, 0, j, route | (b<<7), 4);
	au->y[route]=au->x[a];
	au->x[a]=route;
	au->z[route]=a & 0x000000ff;
	FUNC0(au->routes, route, 1);
}