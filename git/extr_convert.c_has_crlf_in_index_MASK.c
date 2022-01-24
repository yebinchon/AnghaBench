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
struct index_state {int dummy; } ;

/* Variables and functions */
 unsigned int CONVERT_STAT_BITS_BIN ; 
 unsigned int CONVERT_STAT_BITS_TXT_CRLF ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 unsigned int FUNC1 (void*,unsigned long) ; 
 char* FUNC2 (void*,char,unsigned long) ; 
 void* FUNC3 (struct index_state const*,char const*,unsigned long*) ; 

__attribute__((used)) static int FUNC4(const struct index_state *istate, const char *path)
{
	unsigned long sz;
	void *data;
	const char *crp;
	int has_crlf = 0;

	data = FUNC3(istate, path, &sz);
	if (!data)
		return 0;

	crp = FUNC2(data, '\r', sz);
	if (crp) {
		unsigned int ret_stats;
		ret_stats = FUNC1(data, sz);
		if (!(ret_stats & CONVERT_STAT_BITS_BIN) &&
		    (ret_stats & CONVERT_STAT_BITS_TXT_CRLF))
			has_crlf = 1;
	}
	FUNC0(data);
	return has_crlf;
}