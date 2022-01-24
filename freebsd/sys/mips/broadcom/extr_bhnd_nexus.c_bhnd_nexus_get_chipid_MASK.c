#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bhnd_chipid {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct bhnd_chipid const cid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

__attribute__((used)) static const struct bhnd_chipid *
FUNC1(device_t dev, device_t child)
{
	return (&FUNC0()->cid);
}