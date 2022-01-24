#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ xbe_msize; char* xbe_name; char* xbe_interpreter; } ;
typedef  TYPE_1__ ximgact_binmisc_entry_t ;
typedef  int /*<<< orphan*/  imgact_binmisc_entry_t ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int IBE_INTERP_LEN_MAX ; 
 scalar_t__ IBE_MAGIC_MAX ; 
 int IBE_NAME_MAX ; 
#define  ISM_OLD_ARGV0 129 
#define  ISM_POUND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  interp_list_entry_count ; 
 int /*<<< orphan*/  interp_list_sx ; 
 int /*<<< orphan*/  interpreter_list ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  link ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(ximgact_binmisc_entry_t *xbe)
{
	imgact_binmisc_entry_t *ibe;
	char *p;
	int cnt;

	if (xbe->xbe_msize > IBE_MAGIC_MAX)
		return (EINVAL);

	for(cnt = 0, p = xbe->xbe_name; *p != 0; cnt++, p++)
		if (cnt >= IBE_NAME_MAX || !FUNC3((int)*p))
			return (EINVAL);

	for(cnt = 0, p = xbe->xbe_interpreter; *p != 0; cnt++, p++)
		if (cnt >= IBE_INTERP_LEN_MAX || !FUNC3((int)*p))
			return (EINVAL);

	/* Make sure we don't have any invalid #'s. */
	p = xbe->xbe_interpreter;
	while (1) {
		p = FUNC4(p, '#');
		if (!p)
			break;

		p++;
		switch(*p) {
		case ISM_POUND:
			/* "##" */
			p++;
			break;

		case ISM_OLD_ARGV0:
			/* "#a" */
			p++;
			break;

		case 0:
		default:
			/* Anything besides the above is invalid. */
			return (EINVAL);
		}
	}

	FUNC5(&interp_list_sx);
	if (FUNC1(xbe->xbe_name) != NULL) {
		FUNC6(&interp_list_sx);
		return (EEXIST);
	}

	/* Preallocate a new entry. */
	ibe = FUNC2(xbe);

	FUNC0(&interpreter_list, ibe, link);
	interp_list_entry_count++;
	FUNC6(&interp_list_sx);

	return (0);
}