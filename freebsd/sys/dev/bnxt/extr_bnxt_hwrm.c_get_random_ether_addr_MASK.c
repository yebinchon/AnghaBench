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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  temp ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 

__attribute__((used)) static inline void
FUNC2(uint8_t *addr)
{
	uint8_t temp[ETHER_ADDR_LEN];

	FUNC0(&temp, sizeof(temp), 0);
	temp[0] &= 0xFE;
	temp[0] |= 0x02;
	FUNC1(temp, addr, sizeof(temp));
}