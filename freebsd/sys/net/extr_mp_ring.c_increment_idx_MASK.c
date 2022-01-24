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
typedef  int uint16_t ;
struct ifmp_ring {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline uint16_t
FUNC1(struct ifmp_ring *r, uint16_t idx, uint16_t n)
{
	int x = r->size - idx;

	FUNC0(x > 0);
	return (x > n ? idx + n : n - x);
}