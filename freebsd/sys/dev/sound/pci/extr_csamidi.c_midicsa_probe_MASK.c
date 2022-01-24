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
struct sndcard_func {scalar_t__ func; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ SCF_MIDI ; 
 struct sndcard_func* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct sndcard_func *func;

	/* The parent device has already been probed. */

	func = FUNC0(dev);
	if (func == NULL || func->func != SCF_MIDI)
		return (ENXIO);

	FUNC1(dev, "CS461x MIDI");
	return (0);
}