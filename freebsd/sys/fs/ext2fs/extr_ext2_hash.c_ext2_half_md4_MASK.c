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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(uint32_t hash[4], uint32_t data[8])
{
	uint32_t a = hash[0], b = hash[1], c = hash[2], d = hash[3];

	/* Round 1 */
	FUNC0(a, b, c, d, data[0],  3);
	FUNC0(d, a, b, c, data[1],  7);
	FUNC0(c, d, a, b, data[2], 11);
	FUNC0(b, c, d, a, data[3], 19);
	FUNC0(a, b, c, d, data[4],  3);
	FUNC0(d, a, b, c, data[5],  7);
	FUNC0(c, d, a, b, data[6], 11);
	FUNC0(b, c, d, a, data[7], 19);

	/* Round 2 */
	FUNC1(a, b, c, d, data[1],  3);
	FUNC1(d, a, b, c, data[3],  5);
	FUNC1(c, d, a, b, data[5],  9);
	FUNC1(b, c, d, a, data[7], 13);
	FUNC1(a, b, c, d, data[0],  3);
	FUNC1(d, a, b, c, data[2],  5);
	FUNC1(c, d, a, b, data[4],  9);
	FUNC1(b, c, d, a, data[6], 13);

	/* Round 3 */
	FUNC2(a, b, c, d, data[3],  3);
	FUNC2(d, a, b, c, data[7],  9);
	FUNC2(c, d, a, b, data[2], 11);
	FUNC2(b, c, d, a, data[6], 15);
	FUNC2(a, b, c, d, data[1],  3);
	FUNC2(d, a, b, c, data[5],  9);
	FUNC2(c, d, a, b, data[0], 11);
	FUNC2(b, c, d, a, data[4], 15);

	hash[0] += a;
	hash[1] += b;
	hash[2] += c;
	hash[3] += d;
}