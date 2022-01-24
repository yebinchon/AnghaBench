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
 int FUNC0 (char const*,char*,int) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(const char *b64, void **binp, size_t *bin_lenp)
{
	char *bin;
	int b64_len, bin_len;

	b64_len = FUNC5(b64);
	bin_len = (b64_len + 3) / 4 * 3;
	bin = FUNC1(bin_len, 1);
	if (bin == NULL)
		FUNC3(1, "calloc");

	bin_len = FUNC0(b64, bin, bin_len);
	if (bin_len < 0) {
		FUNC4("malformed base64 variable");
		FUNC2(bin);
		return (-1);
	}
	*binp = bin;
	*bin_lenp = bin_len;
	return (0);
}