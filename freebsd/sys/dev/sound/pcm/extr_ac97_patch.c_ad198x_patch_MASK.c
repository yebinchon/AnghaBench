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
struct ac97_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ac97_info*) ; 
 int FUNC1 (struct ac97_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_info*,int,int) ; 

void FUNC3(struct ac97_info* codec)
{
	switch (FUNC0(codec)) {
	case 0x11931043:	/* Not for ASUS A9T (probably else too). */
		break;
	default:
		FUNC2(codec, 0x76, FUNC1(codec, 0x76) | 0x0420);
		break;
	}
}