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
typedef  int uint32_t ;
struct hdacc_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ ** tags; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct hdacc_softc* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void
FUNC3(device_t dev, uint32_t resp)
{
	struct hdacc_softc *codec = FUNC1(dev);
	device_t child;
	int tag;

	tag = resp >> 26;
	if ((child = codec->tags[tag]) != NULL)
		FUNC0(child, resp);
	else
		FUNC2(codec->dev, "Unexpected unsolicited "
		    "response with tag %d: %08x\n", tag, resp);
}