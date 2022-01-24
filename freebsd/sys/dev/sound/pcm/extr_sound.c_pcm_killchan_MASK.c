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
struct snddev_info {int dummy; } ;
struct pcm_channel {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  pcm; } ;

/* Variables and functions */
 struct pcm_channel* FUNC0 (struct snddev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct snddev_info*) ; 
 TYPE_1__ channels ; 
 struct snddev_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pcm_channel*) ; 
 int FUNC6 (struct snddev_info*,struct pcm_channel*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct snddev_info *d = FUNC4(dev);
	struct pcm_channel *ch;
	int error;

	FUNC1(d);

	ch = FUNC0(d, channels.pcm);

	FUNC2(d);
	error = FUNC6(d, ch);
	FUNC3(d);
	if (error)
		return (error);
	return (FUNC5(ch));
}