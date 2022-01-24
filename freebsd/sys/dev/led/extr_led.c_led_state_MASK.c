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
struct sbuf {int dummy; } ;
struct ledsc {scalar_t__ count; int /*<<< orphan*/  private; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/ * ptr; int /*<<< orphan*/ * str; struct sbuf* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  blinkers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  led_ch ; 
 int /*<<< orphan*/  led_timeout ; 
 int /*<<< orphan*/ * FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct ledsc *sc, struct sbuf **sb, int state)
{
	struct sbuf *sb2 = NULL;

	sb2 = sc->spec;
	sc->spec = *sb;
	if (*sb != NULL) {
		sc->str = FUNC1(*sb);
		if (sc->ptr == NULL) {
			blinkers++;
			FUNC0(&led_ch, hz / 10, led_timeout, NULL);
		}
		sc->ptr = sc->str;
	} else {
		sc->str = NULL;
		if (sc->ptr != NULL)
			blinkers--;
		sc->ptr = NULL;
		sc->func(sc->private, state);
	}
	sc->count = 0;
	*sb = sb2;
	return(0);
}