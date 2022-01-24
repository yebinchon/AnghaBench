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
struct iconv_cspair {char* cp_to; char* cp_from; void* cp_data; struct iconv_converter_class* cp_dcp; scalar_t__ cp_id; } ;
struct iconv_converter_class {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  M_ICONV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iconv_cspair*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iconv_cspair*,int) ; 
 int /*<<< orphan*/  cp_link ; 
 int /*<<< orphan*/  iconv_csid ; 
 int /*<<< orphan*/  iconv_cslist ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ *) ; 
 void* iconv_unicode_string ; 
 struct iconv_cspair* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(const char *to, const char *from,
	struct iconv_converter_class *dcp, void *data,
	struct iconv_cspair **cspp)
{
	struct iconv_cspair *csp;
	char *cp;
	int csize, ucsto, ucsfrom;

	if (FUNC2(to, from, NULL) == 0)
		return EEXIST;
	csize = sizeof(*csp);
	ucsto = FUNC4(to, iconv_unicode_string) == 0;
	if (!ucsto)
		csize += FUNC6(to) + 1;
	ucsfrom = FUNC4(from, iconv_unicode_string) == 0;
	if (!ucsfrom)
		csize += FUNC6(from) + 1;
	csp = FUNC3(csize, M_ICONV, M_WAITOK);
	FUNC1(csp, csize);
	csp->cp_id = iconv_csid++;
	csp->cp_dcp = dcp;
	cp = (char*)(csp + 1);
	if (!ucsto) {
		FUNC5(cp, to);
		csp->cp_to = cp;
		cp += FUNC6(cp) + 1;
	} else
		csp->cp_to = iconv_unicode_string;
	if (!ucsfrom) {
		FUNC5(cp, from);
		csp->cp_from = cp;
	} else
		csp->cp_from = iconv_unicode_string;
	csp->cp_data = data;

	FUNC0(&iconv_cslist, csp, cp_link);
	*cspp = csp;
	return 0;
}