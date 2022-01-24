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
struct basl_fio {scalar_t__ fd; int /*<<< orphan*/  f_name; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHYVE_ASL_SUFFIX ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  basl_stemplate ; 
 int /*<<< orphan*/  basl_template ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct basl_fio *bf, int suffix)
{
	int err;

	err = 0;

	if (suffix) {
		FUNC4(bf->f_name, basl_stemplate, MAXPATHLEN);
		bf->fd = FUNC3(bf->f_name, FUNC5(BHYVE_ASL_SUFFIX));
	} else {
		FUNC4(bf->f_name, basl_template, MAXPATHLEN);
		bf->fd = FUNC2(bf->f_name);
	}

	if (bf->fd > 0) {
		bf->fp = FUNC1(bf->fd, "w+");
		if (bf->fp == NULL) {
			FUNC6(bf->f_name);
			FUNC0(bf->fd);
		}
	} else {
		err = 1;
	}

	return (err);
}