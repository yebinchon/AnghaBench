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
struct intsrc {TYPE_1__* is_pic; } ;
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef  enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
struct TYPE_2__ {int (* pic_config_intr ) (struct intsrc*,int,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 struct intsrc* FUNC0 (int) ; 
 int FUNC1 (struct intsrc*,int,int) ; 

int
FUNC2(int vector, enum intr_trigger trig, enum intr_polarity pol)
{
	struct intsrc *isrc;

	isrc = FUNC0(vector);
	if (isrc == NULL)
		return (EINVAL);
	return (isrc->is_pic->pic_config_intr(isrc, trig, pol));
}