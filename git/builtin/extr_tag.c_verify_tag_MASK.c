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
struct ref_format {scalar_t__ format; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int GPG_VERIFY_OMIT_STATUS ; 
 int GPG_VERIFY_VERBOSE ; 
 scalar_t__ FUNC0 (struct object_id const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct object_id const*,struct ref_format const*) ; 

__attribute__((used)) static int FUNC2(const char *name, const char *ref,
		      const struct object_id *oid, const void *cb_data)
{
	int flags;
	const struct ref_format *format = cb_data;
	flags = GPG_VERIFY_VERBOSE;

	if (format->format)
		flags = GPG_VERIFY_OMIT_STATUS;

	if (FUNC0(oid, name, flags))
		return -1;

	if (format->format)
		FUNC1(name, oid, format);

	return 0;
}