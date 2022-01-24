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
struct hdaa_pcm_devinfo {int /*<<< orphan*/  dev; } ;
struct hdaa_devinfo {int num_devs; int /*<<< orphan*/  dev; struct hdaa_pcm_devinfo* devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC2(struct hdaa_devinfo *devinfo)
{
	int i;

	for (i = 0; i < devinfo->num_devs; i++) {
		struct hdaa_pcm_devinfo *pdevinfo = &devinfo->devs[i];

		pdevinfo->dev = FUNC0(devinfo->dev, "pcm", -1);
		FUNC1(pdevinfo->dev, (void *)pdevinfo);
	}
}