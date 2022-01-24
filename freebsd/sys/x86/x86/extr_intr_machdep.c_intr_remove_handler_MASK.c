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
struct intsrc {scalar_t__ is_handlers; TYPE_1__* is_pic; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pic_disable_intr ) (struct intsrc*) ;int /*<<< orphan*/  (* pic_disable_source ) (struct intsrc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PIC_NO_EOI ; 
 int FUNC0 (void*) ; 
 struct intsrc* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct intsrc*) ; 
 int /*<<< orphan*/  intrsrc_lock ; 
 int /*<<< orphan*/  FUNC3 (struct intsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intsrc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(void *cookie)
{
	struct intsrc *isrc;
	int error;

	isrc = FUNC1(cookie);
	error = FUNC0(cookie);
	if (error == 0) {
		FUNC5(&intrsrc_lock);
		isrc->is_handlers--;
		if (isrc->is_handlers == 0) {
			isrc->is_pic->pic_disable_source(isrc, PIC_NO_EOI);
			isrc->is_pic->pic_disable_intr(isrc);
		}
		FUNC2(isrc);
		FUNC6(&intrsrc_lock);
	}
	return (error);
}