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
struct hdaa_devinfo {int /*<<< orphan*/  dev; } ;
struct hdaa_chan {int stripecap; scalar_t__ sid; scalar_t__ dir; int /*<<< orphan*/  flags; int /*<<< orphan*/  blkcnt; int /*<<< orphan*/  blksz; int /*<<< orphan*/  b; int /*<<< orphan*/  dmapos; scalar_t__ stripectl; struct hdaa_devinfo* devinfo; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HDAA_CHN_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hdaa_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct hdaa_chan*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct hdaa_chan *ch)
{
	struct hdaa_devinfo *devinfo = ch->devinfo;
	uint32_t fmt;

	fmt = FUNC8(ch);
	ch->stripectl = FUNC4(ch->stripecap & FUNC6(fmt) &
	    FUNC5(devinfo->dev)) - 1;
	ch->sid = FUNC0(FUNC3(devinfo->dev), devinfo->dev,
	    ch->dir == PCMDIR_PLAY ? 1 : 0, fmt, ch->stripectl, &ch->dmapos);
	if (ch->sid <= 0)
		return (EBUSY);
	FUNC7(ch);
	FUNC1(FUNC3(devinfo->dev), devinfo->dev,
	    ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid);
	FUNC2(FUNC3(devinfo->dev), devinfo->dev,
	    ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid,
	    FUNC9(ch->b), ch->blksz, ch->blkcnt);
	ch->flags |= HDAA_CHN_RUNNING;
	return (0);
}