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
typedef  int u_int32_t ;
struct sc_rchinfo {int num; int spd; TYPE_1__* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;
struct TYPE_2__ {scalar_t__ audigy; } ;

/* Variables and functions */
 int* adcspeed ; 
 int* audigy_adcspeed ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static u_int32_t
FUNC2(kobj_t obj, void *data, u_int32_t speed)
{
	struct sc_rchinfo *ch = data;

	if (ch->num == 0) {
		if (ch->parent->audigy)
			speed = audigy_adcspeed[FUNC0(speed)];
		else
			speed = adcspeed[FUNC1(speed)];
	}
	if (ch->num == 1)
		speed = 48000;
	if (ch->num == 2)
		speed = 8000;
	ch->spd = speed;
	return ch->spd;
}