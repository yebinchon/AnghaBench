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
struct bhnd_resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ io_offset ; 
 int /*<<< orphan*/  io_res ; 

__attribute__((used)) static void 
FUNC3(device_t dev, device_t child, struct bhnd_resource *r,
    bus_size_t offset, bus_size_t length, int flags)
{
	FUNC0(length);

	FUNC2(io_res, io_offset + offset, length, flags);

	FUNC1();
}