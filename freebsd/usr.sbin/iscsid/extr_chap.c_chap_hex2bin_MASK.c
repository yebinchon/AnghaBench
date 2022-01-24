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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (size_t,int) ; 
 int FUNC2 (char const*,void**,size_t*) ; 
 int FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC9(const char *hex, void **binp, size_t *bin_lenp)
{
	int i, hex_len, nibble;
	bool lo = true; /* As opposed to 'hi'. */
	char *bin;
	size_t bin_off, bin_len;

	if (FUNC8(hex, "0b", FUNC7("0b")) == 0)
		return (FUNC2(hex + 2, binp, bin_lenp));

	if (FUNC8(hex, "0x", FUNC7("0x")) != 0) {
		FUNC6("malformed variable, should start with \"0x\""
		    " or \"0b\"");
		return (-1);
	}

	hex += FUNC7("0x");
	hex_len = FUNC7(hex);
	if (hex_len < 1) {
		FUNC6("malformed variable; doesn't contain anything "
		    "but \"0x\"");
		return (-1);
	}

	bin_len = hex_len / 2 + hex_len % 2;
	bin = FUNC1(bin_len, 1);
	if (bin == NULL)
		FUNC5(1, "calloc");

	bin_off = bin_len - 1;
	for (i = hex_len - 1; i >= 0; i--) {
		nibble = FUNC3(hex[i]);
		if (nibble < 0) {
			FUNC6("malformed variable, invalid char \"%c\"",
			    hex[i]);
			FUNC4(bin);
			return (-1);
		}

		FUNC0(bin_off < bin_len);
		if (lo) {
			bin[bin_off] = nibble;
			lo = false;
		} else {
			bin[bin_off] |= nibble << 4;
			bin_off--;
			lo = true;
		}
	}

	*binp = bin;
	*bin_lenp = bin_len;
	return (0);
}