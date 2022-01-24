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
struct iconv_converter_class {int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iconv_converter_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cc_link ; 
 int /*<<< orphan*/  iconv_converters ; 
 int /*<<< orphan*/  FUNC1 (struct kobj_class*) ; 

__attribute__((used)) static int
FUNC2(struct iconv_converter_class *dcp)
{
	FUNC1((struct kobj_class*)dcp);
	dcp->refs++;
	FUNC0(&iconv_converters, dcp, cc_link);
	return 0;
}