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
typedef  int /*<<< orphan*/  uint16_t ;
struct bwn_mac {int dummy; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC2(struct bwn_mac *mac, uint16_t offset,
					  const int16_t *filter)
{
	int i;

	offset = FUNC0(offset);

	for (i = 0; i < 15; i++, offset++)
		FUNC1(mac, offset, filter[i]);
}