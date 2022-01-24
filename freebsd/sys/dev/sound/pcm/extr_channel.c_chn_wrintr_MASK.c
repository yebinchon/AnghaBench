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
struct pcm_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  PCMTRIG_EMLDMAWR ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*) ; 

__attribute__((used)) static void
FUNC4(struct pcm_channel *c)
{

	FUNC0(c);
	/* update pointers in primary buffer */
	FUNC1(c);
	/* ...and feed from secondary to primary */
	FUNC3(c);
	/* tell the driver we've updated the primary buffer */
	FUNC2(c, PCMTRIG_EMLDMAWR);
}