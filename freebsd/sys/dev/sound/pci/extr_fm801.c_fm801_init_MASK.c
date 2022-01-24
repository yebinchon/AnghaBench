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
typedef  int u_int32_t ;
typedef  void fm801_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FM_CODEC_CTL ; 
 int FM_FM_VOLUME ; 
 int FM_I2S_VOLUME ; 
 int FM_INTMASK ; 
 int FM_INTMASK_MPU ; 
 int FM_INTMASK_PLAY ; 
 int FM_INTMASK_REC ; 
 int FM_INTMASK_VOL ; 
 int FM_INTSTATUS ; 
 int FM_INTSTATUS_MPU ; 
 int FM_INTSTATUS_PLAY ; 
 int FM_INTSTATUS_REC ; 
 int FM_INTSTATUS_VOL ; 
 int FM_PCM_VOLUME ; 
 int FM_RECORD_SOURCE ; 
 int FUNC2 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int) ; 

__attribute__((used)) static int
FUNC4(struct fm801_info *fm801)
{
	u_int32_t k1;

	/* reset codec */
	FUNC3(fm801, FM_CODEC_CTL, 0x0020,2);
	FUNC0(100000);
	FUNC3(fm801, FM_CODEC_CTL, 0x0000,2);
	FUNC0(100000);

	FUNC3(fm801, FM_PCM_VOLUME, 0x0808,2);
	FUNC3(fm801, FM_FM_VOLUME, 0x0808,2);
	FUNC3(fm801, FM_I2S_VOLUME, 0x0808,2);
	FUNC3(fm801, 0x40,0x107f,2);	/* enable legacy audio */

	FUNC3((void *)fm801, FM_RECORD_SOURCE, 0x0000,2);

	/* Unmask playback, record and mpu interrupts, mask the rest */
	k1 = FUNC2((void *)fm801, FM_INTMASK,2);
	FUNC3(fm801, FM_INTMASK,
		(k1 & ~(FM_INTMASK_PLAY | FM_INTMASK_REC | FM_INTMASK_MPU)) |
		FM_INTMASK_VOL,2);
	FUNC3(fm801, FM_INTSTATUS,
		FM_INTSTATUS_PLAY | FM_INTSTATUS_REC | FM_INTSTATUS_MPU |
		FM_INTSTATUS_VOL,2);

	FUNC1("FM801 init Ok\n");
	return 0;
}