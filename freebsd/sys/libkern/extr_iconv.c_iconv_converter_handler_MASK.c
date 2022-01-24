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
struct iconv_converter_class {int dummy; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iconv_converter_class*) ; 
 int FUNC1 (struct iconv_converter_class*) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  iconv_lock ; 
 int FUNC2 (struct iconv_converter_class*) ; 
 int FUNC3 (struct iconv_converter_class*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(module_t mod, int type, void *data)
{
	struct iconv_converter_class *dcp = data;
	int error;

	switch (type) {
	    case MOD_LOAD:
		FUNC4(&iconv_lock);
		error = FUNC2(dcp);
		if (error) {
			FUNC5(&iconv_lock);
			break;
		}
		error = FUNC1(dcp);
		if (error)
			FUNC3(dcp);
		FUNC5(&iconv_lock);
		break;
	    case MOD_UNLOAD:
		FUNC4(&iconv_lock);
		FUNC0(dcp);
		error = FUNC3(dcp);
		FUNC5(&iconv_lock);
		break;
	    default:
		error = EINVAL;
	}
	return error;
}