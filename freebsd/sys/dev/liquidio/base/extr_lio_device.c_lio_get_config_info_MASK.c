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
struct octeon_device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 

void   *
FUNC1(struct octeon_device *oct, uint16_t card_type)
{
	void	*conf = NULL;

	conf = FUNC0(oct, card_type);
	if (conf == NULL)
		return (NULL);

	return (conf);
}