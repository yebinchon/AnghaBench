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
typedef  int /*<<< orphan*/  u_char ;
struct ng_parse_type {struct ng_parse_fixedstring_info* info; } ;
struct ng_parse_fixedstring_info {int bufSize; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(const struct ng_parse_type *type,
	const u_char *const start, u_char *buf, int *buflen)
{
	const struct ng_parse_fixedstring_info *const fi = type->info;

	if (*buflen < fi->bufSize)
		return (ERANGE);
	FUNC0(buf, fi->bufSize);
	*buflen = fi->bufSize;
	return (0);
}