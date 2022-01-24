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
struct ttydisc_recalc_length {int curlen; struct tty* tp; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char CTAB ; 
 scalar_t__ FUNC1 (char,int) ; 
 int /*<<< orphan*/  ECHOCTL ; 
 int /*<<< orphan*/  l ; 

__attribute__((used)) static void
FUNC2(void *d, char c, int quote)
{
	struct ttydisc_recalc_length *data = d;
	struct tty *tp = data->tp;

	if (FUNC1(c, quote)) {
		if (FUNC0(l, ECHOCTL))
			data->curlen += 2;
	} else if (c == CTAB) {
		data->curlen += 8 - (data->curlen & 7);
	} else {
		data->curlen++;
	}
}