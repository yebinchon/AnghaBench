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
struct basl_fio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct basl_fio*) ; 
 int FUNC1 (struct basl_fio*,int) ; 

__attribute__((used)) static int
FUNC2(struct basl_fio *in, struct basl_fio *out)
{
	int err;

	err = FUNC1(in, 0);
	if (!err) {
		err = FUNC1(out, 1);
		if (err) {
			FUNC0(in);
		}
	}

	return (err);
}