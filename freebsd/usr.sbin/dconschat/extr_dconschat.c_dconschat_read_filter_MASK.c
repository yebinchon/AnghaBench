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
typedef  scalar_t__ u_char ;
struct dcons_state {int flags; int escape_state; scalar_t__ escape; int /*<<< orphan*/  reset; } ;
struct dcons_port {int skip_read; int /*<<< orphan*/  outfd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int F_ALT_BREAK ; 
 int F_TELNET ; 
 scalar_t__ IAC ; 
 scalar_t__ FUNC1 (struct dcons_port*) ; 
 scalar_t__ FUNC2 (struct dcons_port*) ; 
 scalar_t__ KEY_CR ; 
 void* STATE0 ; 
#define  STATE1 130 
#define  STATE2 129 
#define  STATE3 128 
 int /*<<< orphan*/  abreak ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dcons_state*,struct dcons_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct dcons_state*,struct dcons_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct dcons_state*,struct dcons_port*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC11(struct dcons_state *dc, struct dcons_port *p,
    u_char *sp, int slen, u_char *dp, int *dlen)
{
	int skip;
	char *buf;

	while (slen > 0) {
		skip = 0;
		if (FUNC1(p)) {
			if ((dc->flags & F_TELNET) != 0) {
				/* XXX Telnet workarounds */
				if (p->skip_read -- > 0) {
					sp ++;
					slen --;
					continue;
				}
				if (*sp == IAC) {
					if (verbose)
						FUNC8("(IAC)");
					p->skip_read = 2;
					sp ++;
					slen --;
					continue;
				}
				if (*sp == 0) {
					if (verbose)
						FUNC8("(0 stripped)");
					sp ++;
					slen --;
					continue;
				}
			}
			switch (dc->escape_state) {
			case STATE1:
				if (*sp == dc->escape) {
					skip = 1;
					dc->escape_state = STATE2;
				} else
					dc->escape_state = STATE0;
				break;
			case STATE2:
				dc->escape_state = STATE0;
				skip = 1;
				if (*sp == '.')
					FUNC4(0);
				else if (*sp == FUNC0('B')) {
					FUNC3(abreak, dp, 3);
					dp += 3;
					*dlen += 3;
				}
				else if (*sp == FUNC0('G'))
					FUNC5(dc, p);
				else if ((*sp == FUNC0('R'))
						&& (dc->reset != 0)) {
					dc->escape_state = STATE3;
					buf = "\r\n[Are you sure to reset target? (y/N)]";
					FUNC10(p->outfd, buf, FUNC9(buf));
				} else if (*sp == FUNC0('Z'))
					FUNC7(dc, p);
				else {
					skip = 0;
					*dp++ = dc->escape;
					(*dlen) ++;
				}
				break;
			case STATE3:
				dc->escape_state = STATE0;
				skip = 1;
				if (*sp == 'y')
					FUNC6(dc, p);
				else {
					FUNC10(p->outfd, sp, 1);
					FUNC10(p->outfd, "\r\n", 2);
				}
				break;
			}
			if (*sp == KEY_CR)
				dc->escape_state = STATE1;
		} else if (FUNC2(p)) {
			/* GDB: ^C -> CR+~+^B */
			if (*sp == FUNC0('C') && (dc->flags & F_ALT_BREAK) != 0) {
				FUNC3(abreak, dp, 3);
				dp += 3;
				sp ++;
				*dlen += 3;
				/* discard rest of the packet */
				slen = 0;
				break;
			}
		}
		if (!skip) {
			*dp++ = *sp;
			(*dlen) ++;
		}
		sp ++;
		slen --;
	}
	return (*dlen);
			
}