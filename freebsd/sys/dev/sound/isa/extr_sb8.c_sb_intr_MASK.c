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
struct sb_info {TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_DATA_AVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
    	struct sb_info *sb = (struct sb_info *)arg;

	FUNC1(sb);
    	if (FUNC4(sb->pch.buffer) > 0) {
		FUNC3(sb);
		FUNC0(sb->pch.channel);
		FUNC1(sb);
	}

    	if (FUNC4(sb->rch.buffer) > 0) {
		FUNC3(sb);
		FUNC0(sb->rch.channel);
		FUNC1(sb);
	}

	FUNC2(sb, DSP_DATA_AVAIL); /* int ack */
	FUNC3(sb);
}