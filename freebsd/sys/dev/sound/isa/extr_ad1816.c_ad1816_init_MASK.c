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
struct ad1816_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad1816_info*,int,int) ; 

__attribute__((used)) static int
FUNC1(struct ad1816_info *ad1816, device_t dev)
{
    	FUNC0(ad1816, 1, 0x2);	/* disable interrupts */
    	FUNC0(ad1816, 32, 0x90F0);	/* SoundSys Mode, split fmt */

    	FUNC0(ad1816, 5, 0x8080);	/* FM volume mute */
    	FUNC0(ad1816, 6, 0x8080);	/* I2S1 volume mute */
    	FUNC0(ad1816, 7, 0x8080);	/* I2S0 volume mute */
    	FUNC0(ad1816, 17, 0x8888);	/* VID Volume mute */
    	FUNC0(ad1816, 20, 0x5050);	/* recsrc mic, agc off */
    	/* adc gain is set to 0 */

	return 0;
}