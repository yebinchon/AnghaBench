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
struct mp_link {scalar_t__ bandwidth; scalar_t__ seq; } ;

/* Variables and functions */

void
FUNC0(struct mp_link *mplink)
{
  mplink->seq = 0;
  mplink->bandwidth = 0;
}