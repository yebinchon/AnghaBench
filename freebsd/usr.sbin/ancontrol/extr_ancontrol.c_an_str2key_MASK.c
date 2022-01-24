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
struct an_ltv_key {int klen; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *s, struct an_ltv_key *k)
{
	int			n, i;
	char			*p;

	/* Is this a hex string? */
	if (s[0] == '0' && (s[1] == 'x' || s[1] == 'X')) {
		/* Yes, convert to int. */
		n = 0;
		p = (char *)&k->key[0];
		for (i = 2; s[i] != '\0' && s[i + 1] != '\0'; i+= 2) {
			*p++ = (FUNC0(s[i]) << 4) + FUNC0(s[i + 1]);
			n++;
		}
		if (s[i] != '\0')
			FUNC2(1, "hex strings must be of even length");
		k->klen = n;
	} else {
		/* No, just copy it in. */
		FUNC1(s, k->key, FUNC3(s));
		k->klen = FUNC3(s);
	}

	return;
}