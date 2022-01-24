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
typedef  enum crlf_action { ____Placeholder_crlf_action } crlf_action ;

/* Variables and functions */
 int CONV_EOL_RNDTRP_DIE ; 
 int CONV_EOL_RNDTRP_WARN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC3(const char *path, enum crlf_action crlf_action,
			    struct text_stat *old_stats, struct text_stat *new_stats,
			    int conv_flags)
{
	if (old_stats->crlf && !new_stats->crlf ) {
		/*
		 * CRLFs would not be restored by checkout
		 */
		if (conv_flags & CONV_EOL_RNDTRP_DIE)
			FUNC1(FUNC0("CRLF would be replaced by LF in %s"), path);
		else if (conv_flags & CONV_EOL_RNDTRP_WARN)
			FUNC2(FUNC0("CRLF will be replaced by LF in %s.\n"
				  "The file will have its original line"
				  " endings in your working directory"), path);
	} else if (old_stats->lonelf && !new_stats->lonelf ) {
		/*
		 * CRLFs would be added by checkout
		 */
		if (conv_flags & CONV_EOL_RNDTRP_DIE)
			FUNC1(FUNC0("LF would be replaced by CRLF in %s"), path);
		else if (conv_flags & CONV_EOL_RNDTRP_WARN)
			FUNC2(FUNC0("LF will be replaced by CRLF in %s.\n"
				  "The file will have its original line"
				  " endings in your working directory"), path);
	}
}