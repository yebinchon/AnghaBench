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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ PCM3052_IICADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const char *name, *compat;

	name = FUNC3(dev);
	if (name == NULL)
		return (ENXIO);

	if (FUNC4(name, "codec") == 0) {
		if (FUNC1(dev) != PCM3052_IICADDR)
			return (ENXIO);
	} else if (FUNC4(name, "codec") == 0) {
		compat = FUNC2(dev);
		if (compat == NULL || FUNC4(compat, "pcm3052") != 0)
			return (ENXIO);
	} else
		return (ENXIO);

	FUNC0(dev, "Texas Instruments PCM3052 Audio Codec");
	return (0);
}