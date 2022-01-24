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
typedef  int /*<<< orphan*/  uint32_t ;
struct hdacc_softc {int /*<<< orphan*/ ** streams; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hdacc_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int dir, int format,
    int stripe, uint32_t **dmapos)
{
	struct hdacc_softc *codec = FUNC2(dev);
	int stream;

	stream = FUNC0(FUNC1(dev), dev,
	    dir, format, stripe, dmapos);
	if (stream > 0)
		codec->streams[dir][stream] = child;
	return (stream);
}