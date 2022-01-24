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
struct setup_revision_opt {int dummy; } ;
struct rev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ; 

__attribute__((used)) static void FUNC2(int argc, const char **argv, const char *prefix,
			 struct rev_info *rev, struct setup_revision_opt *opt)
{
	FUNC0(rev);
	FUNC1(argc, argv, prefix, rev, opt);
}