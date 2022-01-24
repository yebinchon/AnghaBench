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
struct option {struct note_data* value; } ;
struct note_data {int use_editor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct option const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(const struct option *opt, const char *arg, int unset)
{
	struct note_data *d = opt->value;
	FUNC0(unset);
	d->use_editor = 1;
	return FUNC1(opt, arg, unset);
}