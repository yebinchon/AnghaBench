#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {char* key; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 TYPE_1__* hdaa_quirks_tab ; 
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC4(const char *str, uint32_t *on, uint32_t *off)
{
	int i = 0, j, k, len, inv;

	for (;;) {
		while (str[i] != '\0' &&
		    (str[i] == ',' || FUNC0(str[i]) != 0))
			i++;
		if (str[i] == '\0')
			return;
		j = i;
		while (str[j] != '\0' &&
		    !(str[j] == ',' || FUNC0(str[j]) != 0))
			j++;
		len = j - i;
		if (len > 2 && FUNC3(str + i, "no", 2) == 0)
			inv = 2;
		else
			inv = 0;
		for (k = 0; len > inv && k < FUNC1(hdaa_quirks_tab); k++) {
			if (FUNC3(str + i + inv,
			    hdaa_quirks_tab[k].key, len - inv) != 0)
				continue;
			if (len - inv != FUNC2(hdaa_quirks_tab[k].key))
				continue;
			if (inv == 0) {
				*on |= hdaa_quirks_tab[k].value;
				*off &= ~hdaa_quirks_tab[k].value;
			} else {
				*off |= hdaa_quirks_tab[k].value;
				*on &= ~hdaa_quirks_tab[k].value;
			}
			break;
		}
		i = j;
	}
}