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
struct lconv {int /*<<< orphan*/  negative_sign; int /*<<< orphan*/  positive_sign; int /*<<< orphan*/  thousands_sep; int /*<<< orphan*/  decimal_point; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int byte_sort ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int gnusort_numeric_compatibility ; 
 struct lconv* FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  symbol_decimal_point ; 
 int /*<<< orphan*/  symbol_negative_sign ; 
 int /*<<< orphan*/  symbol_positive_sign ; 
 int /*<<< orphan*/  symbol_thousands_sep ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct lconv *lc;
	const char *locale;

	FUNC3(LC_ALL, "");

	lc = FUNC2();

	if (lc) {
		/* obtain LC_NUMERIC info */
		/* Convert to wide char form */
		FUNC0(&symbol_decimal_point, lc->decimal_point,
		    symbol_decimal_point);
		FUNC0(&symbol_thousands_sep, lc->thousands_sep,
		    symbol_thousands_sep);
		FUNC0(&symbol_positive_sign, lc->positive_sign,
		    symbol_positive_sign);
		FUNC0(&symbol_negative_sign, lc->negative_sign,
		    symbol_negative_sign);
	}

	if (FUNC1("GNUSORT_NUMERIC_COMPATIBILITY"))
		gnusort_numeric_compatibility = true;

	locale = FUNC3(LC_COLLATE, NULL);

	if (locale) {
		char *tmpl;
		const char *cclocale;

		tmpl = FUNC5(locale);
		cclocale = FUNC3(LC_COLLATE, "C");
		if (cclocale && !FUNC6(cclocale, tmpl))
			byte_sort = true;
		else {
			const char *pclocale;

			pclocale = FUNC3(LC_COLLATE, "POSIX");
			if (pclocale && !FUNC6(pclocale, tmpl))
				byte_sort = true;
		}
		FUNC3(LC_COLLATE, tmpl);
		FUNC4(tmpl);
	}
}