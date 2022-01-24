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

/* Variables and functions */
 int /*<<< orphan*/  M_VERIEXEC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ve_mutex ; 

__attribute__((used)) static size_t
FUNC5(char **labelp, size_t labellen, char *src,
    size_t srclen)
{
	char *label;

	label = *labelp;
	if (labellen < srclen) {
		FUNC4(&ve_mutex);
		if (label != NULL)
			FUNC0(label, M_VERIEXEC);
		label = FUNC1(srclen, M_VERIEXEC, M_WAITOK);
		FUNC3(&ve_mutex);
		labellen = srclen;
		*labelp = label;
	}
	FUNC2(label, src, srclen);
	return labellen;
}