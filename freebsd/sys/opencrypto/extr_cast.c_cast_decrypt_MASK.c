#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
typedef  int u_int32_t ;
struct TYPE_3__ {int rounds; } ;
typedef  TYPE_1__ cast_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(cast_key* key, u_int8_t* inblock, u_int8_t* outblock)
{
u_int32_t t, l, r;

	/* Get inblock into l,r */
	r = ((u_int32_t)inblock[0] << 24) | ((u_int32_t)inblock[1] << 16) |
	 ((u_int32_t)inblock[2] << 8) | (u_int32_t)inblock[3];
	l = ((u_int32_t)inblock[4] << 24) | ((u_int32_t)inblock[5] << 16) |
	 ((u_int32_t)inblock[6] << 8) | (u_int32_t)inblock[7];
	/* Do the work */
	/* Only do full 16 rounds if key length > 80 bits */
	if (key->rounds > 12) {
		FUNC0(r, l, 15);
		FUNC2(l, r, 14);
		FUNC1(r, l, 13);
		FUNC0(l, r, 12);
	}
	FUNC2(r, l, 11);
	FUNC1(l, r, 10);
	FUNC0(r, l,  9);
	FUNC2(l, r,  8);
	FUNC1(r, l,  7);
	FUNC0(l, r,  6);
	FUNC2(r, l,  5);
	FUNC1(l, r,  4);
	FUNC0(r, l,  3);
	FUNC2(l, r,  2);
	FUNC1(r, l,  1);
	FUNC0(l, r,  0);
	/* Put l,r into outblock */
	outblock[0] = FUNC3(l);
	outblock[1] = FUNC4(l);
	outblock[2] = FUNC5(l);
	outblock[3] = FUNC6(l);
	outblock[4] = FUNC3(r);
	outblock[5] = FUNC4(r);
	outblock[6] = FUNC5(r);
	outblock[7] = FUNC6(r);
	/* Wipe clean */
	t = l = r = 0;
}