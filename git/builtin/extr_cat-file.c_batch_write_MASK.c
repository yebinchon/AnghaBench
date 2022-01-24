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
struct batch_options {scalar_t__ buffer_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (void const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (int,void const*,int) ; 

__attribute__((used)) static void FUNC3(struct batch_options *opt, const void *data, int len)
{
	if (opt->buffer_output) {
		if (FUNC1(data, 1, len, stdout) != len)
			FUNC0("unable to write to stdout");
	} else
		FUNC2(1, data, len);
}