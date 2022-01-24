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
typedef  int /*<<< orphan*/  uint8_t ;
struct gf128table4 {int dummy; } ;
struct gf128 {int /*<<< orphan*/ * v; } ;

/* Variables and functions */
 struct gf128 FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gf128 FUNC1 (struct gf128,struct gf128) ; 
 struct gf128 FUNC2 (int /*<<< orphan*/  const*) ; 
 struct gf128 FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gf128,struct gf128table4*) ; 

struct gf128
FUNC4(struct gf128 r, const uint8_t *v, struct gf128table4 *tbl)
{
	struct gf128 a, b, c, d;
	struct gf128 tmp;

	tmp = FUNC0(0, 0);

	a = FUNC1(r, FUNC2(&v[0*16]));
	b = FUNC2(&v[1*16]);
	c = FUNC2(&v[2*16]);
	d = FUNC2(&v[3*16]);

	tmp = FUNC3(a.v[1], b.v[1], c.v[1], d.v[1], tmp, tbl);
	tmp = FUNC3(a.v[0], b.v[0], c.v[0], d.v[0], tmp, tbl);

	return tmp;
}