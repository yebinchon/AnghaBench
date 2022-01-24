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
struct text_stat {scalar_t__ lonelf; scalar_t__ crlf; } ;

/* Variables and functions */
 int CONVERT_STAT_BITS_BIN ; 
 int CONVERT_STAT_BITS_TXT_CRLF ; 
 int CONVERT_STAT_BITS_TXT_LF ; 
 scalar_t__ FUNC0 (struct text_stat*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned long,struct text_stat*) ; 

__attribute__((used)) static unsigned int FUNC2(const char *data, unsigned long size)
{
	struct text_stat stats;
	int ret = 0;
	if (!data || !size)
		return 0;
	FUNC1(data, size, &stats);
	if (FUNC0(&stats))
		ret |= CONVERT_STAT_BITS_BIN;
	if (stats.crlf)
		ret |= CONVERT_STAT_BITS_TXT_CRLF;
	if (stats.lonelf)
		ret |=  CONVERT_STAT_BITS_TXT_LF;

	return ret;
}