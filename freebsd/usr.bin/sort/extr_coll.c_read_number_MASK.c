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
typedef  scalar_t__ wchar_t ;
struct bwstring {int dummy; } ;
typedef  int /*<<< orphan*/  bwstring_iterator ;

/* Variables and functions */
 size_t MAX_NUM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bwstring*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned char*) ; 
 scalar_t__ symbol_decimal_point ; 
 scalar_t__ symbol_negative_sign ; 
 scalar_t__ symbol_thousands_sep ; 

__attribute__((used)) static int
FUNC6(struct bwstring *s0, int *sign, wchar_t *smain, size_t *main_len, wchar_t *sfrac, size_t *frac_len, unsigned char *si)
{
	bwstring_iterator s;

	s = FUNC0(s0);

	/* always end the fraction with zero, even if we have no fraction */
	sfrac[0] = 0;

	while (FUNC3(FUNC1(s)))
		s = FUNC2(s, 1);

	if (FUNC1(s) == (wchar_t)symbol_negative_sign) {
		*sign = -1;
		s = FUNC2(s, 1);
	}

	// This is '0', not '\0', do not change this
	while (FUNC4(FUNC1(s)) &&
	    (FUNC1(s) == L'0'))
		s = FUNC2(s, 1);

	while (FUNC1(s) && *main_len < MAX_NUM_SIZE) {
		if (FUNC4(FUNC1(s))) {
			smain[*main_len] = FUNC1(s);
			s = FUNC2(s, 1);
			*main_len += 1;
		} else if (symbol_thousands_sep &&
		    (FUNC1(s) == (wchar_t)symbol_thousands_sep))
			s = FUNC2(s, 1);
		else
			break;
	}

	smain[*main_len] = 0;

	if (FUNC1(s) == (wchar_t)symbol_decimal_point) {
		s = FUNC2(s, 1);
		while (FUNC4(FUNC1(s)) &&
		    *frac_len < MAX_NUM_SIZE) {
			sfrac[*frac_len] = FUNC1(s);
			s = FUNC2(s, 1);
			*frac_len += 1;
		}
		sfrac[*frac_len] = 0;

		while (*frac_len > 0 && sfrac[*frac_len - 1] == L'0') {
			--(*frac_len);
			sfrac[*frac_len] = L'\0';
		}
	}

	FUNC5(FUNC1(s),si);

	if ((*main_len + *frac_len) == 0)
		*sign = 0;

	return (0);
}