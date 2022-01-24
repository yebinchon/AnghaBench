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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct ether_header {int* ether_shost; int* ether_dhost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC3(struct ether_header *ethh, uint8_t seed)
{
	uint32_t saddr, daddr, rc;

	saddr = ethh->ether_shost[5] |
		(ethh->ether_shost[4] << 8) |
		(ethh->ether_shost[3] << 16) |
		(ethh->ether_shost[2] << 24);
	daddr = ethh->ether_dhost[5] |
		(ethh->ether_dhost[4] << 8) |
		(ethh->ether_dhost[3] << 16) |
		(ethh->ether_dhost[2] << 24);

	rc = FUNC2(FUNC0(saddr),
			 FUNC0(daddr),
			 FUNC1(0xFFFD) + seed,
			 FUNC1(0xFFFE) + seed);

	return rc;
}