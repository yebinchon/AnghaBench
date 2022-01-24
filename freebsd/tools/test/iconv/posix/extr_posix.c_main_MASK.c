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

/* Variables and functions */
 int /*<<< orphan*/  close_1 ; 
 int /*<<< orphan*/  conv_2big ; 
 int /*<<< orphan*/  conv_ebadf ; 
 int /*<<< orphan*/  conv_eilseq ; 
 int /*<<< orphan*/  conv_einval ; 
 int /*<<< orphan*/  conv_ret ; 
 int /*<<< orphan*/  open_1 ; 
 int /*<<< orphan*/  open_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

int
FUNC1(void)
{

	FUNC0(open_1, "open_1");
	FUNC0(open_2, "open_2");
	FUNC0(close_1, "close_1");
	FUNC0(conv_ret, "conv_ret");
	FUNC0(conv_ebadf, "conv_ebadf");
	FUNC0(conv_2big, "conv_2big");
	FUNC0(conv_einval, "conv_einval");
	FUNC0(conv_eilseq, "conv_eilseq");
}