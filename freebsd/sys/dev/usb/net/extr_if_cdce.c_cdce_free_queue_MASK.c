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
typedef  size_t uint8_t ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC1(struct mbuf **ppm, uint8_t n)
{
	uint8_t x;
	for (x = 0; x != n; x++) {
		if (ppm[x] != NULL) {
			FUNC0(ppm[x]);
			ppm[x] = NULL;
		}
	}
}