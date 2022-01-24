#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  buffer; } ;
struct ad1816_info {TYPE_2__ pch; TYPE_1__ rch; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816_INT ; 
 unsigned char AD1816_INTRCI ; 
 unsigned char AD1816_INTRPI ; 
 int /*<<< orphan*/  FUNC0 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct ad1816_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ad1816_info*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
    	struct ad1816_info *ad1816 = (struct ad1816_info *)arg;
    	unsigned char   c, served = 0;

	FUNC0(ad1816);
    	/* get interrupt status */
    	c = FUNC3(ad1816, AD1816_INT);

    	/* check for stray interrupts */
    	if (c & ~(AD1816_INTRCI | AD1816_INTRPI)) {
		FUNC5("pcm: stray int (%x)\n", c);
		c &= AD1816_INTRCI | AD1816_INTRPI;
    	}
    	/* check for capture interrupt */
    	if (FUNC6(ad1816->rch.buffer) && (c & AD1816_INTRCI)) {
		FUNC1(ad1816);
		FUNC2(ad1816->rch.channel);
		FUNC0(ad1816);
		served |= AD1816_INTRCI;		/* cp served */
    	}
    	/* check for playback interrupt */
    	if (FUNC6(ad1816->pch.buffer) && (c & AD1816_INTRPI)) {
		FUNC1(ad1816);
		FUNC2(ad1816->pch.channel);
		FUNC0(ad1816);
		served |= AD1816_INTRPI;		/* pb served */
    	}
    	if (served == 0) {
		/* this probably means this is not a (working) ad1816 chip, */
		/* or an error in dma handling                              */
		FUNC5("pcm: int without reason (%x)\n", c);
		c = 0;
    	} else c &= ~served;
    	FUNC4(ad1816, AD1816_INT, c);
    	c = FUNC3(ad1816, AD1816_INT);
    	if (c != 0) FUNC5("pcm: int clear failed (%x)\n", c);
	FUNC1(ad1816);
}