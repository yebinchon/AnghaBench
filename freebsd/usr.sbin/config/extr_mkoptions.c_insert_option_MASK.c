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
struct opt_list {char* o_name; char* o_file; scalar_t__ o_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct opt_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  o_next ; 
 int /*<<< orphan*/  otab ; 

__attribute__((used)) static void
FUNC4(const char *fname, char *this, char *val)
{
	struct opt_list *po;

	FUNC2(fname, this);
	po = (struct opt_list *) FUNC1(1, sizeof *po);
	if (po == NULL)
		FUNC3(EXIT_FAILURE, "calloc");
	po->o_name = this;
	po->o_file = val;
	po->o_flags = 0;
	FUNC0(&otab, po, o_next);
}