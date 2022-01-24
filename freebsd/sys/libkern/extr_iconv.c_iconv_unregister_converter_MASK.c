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
struct kobj_class {int dummy; } ;
struct iconv_converter_class {int refs; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iconv_converter_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cc_link ; 
 int /*<<< orphan*/  iconv_converters ; 
 int /*<<< orphan*/  FUNC2 (struct kobj_class*) ; 

__attribute__((used)) static int
FUNC3(struct iconv_converter_class *dcp)
{
	dcp->refs--;
	if (dcp->refs > 1) {
		FUNC0("converter has %d references left\n", dcp->refs);
		return EBUSY;
	}
	FUNC1(&iconv_converters, dcp, cc_link);
	FUNC2((struct kobj_class*)dcp);
	return 0;
}