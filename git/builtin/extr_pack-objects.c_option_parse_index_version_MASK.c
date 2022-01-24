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
struct option {int dummy; } ;
struct TYPE_2__ {int version; int off32_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__ pack_idx_opts ; 
 void* FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
				      const char *arg, int unset)
{
	char *c;
	const char *val = arg;

	FUNC0(unset);

	pack_idx_opts.version = FUNC3(val, &c, 10);
	if (pack_idx_opts.version > 2)
		FUNC2(FUNC1("unsupported index version %s"), val);
	if (*c == ',' && c[1])
		pack_idx_opts.off32_limit = FUNC3(c+1, &c, 0);
	if (*c || pack_idx_opts.off32_limit & 0x80000000)
		FUNC2(FUNC1("bad index version '%s'"), val);
	return 0;
}