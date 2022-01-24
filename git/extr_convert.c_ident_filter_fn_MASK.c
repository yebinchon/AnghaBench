#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stream_filter {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
struct ident_filter {int state; TYPE_1__ left; int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  head ;

/* Variables and functions */
#define  IDENT_DRAINING 129 
#define  IDENT_SKIPPING 128 
 int /*<<< orphan*/  FUNC0 (struct ident_filter*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(struct stream_filter *filter,
			   const char *input, size_t *isize_p,
			   char *output, size_t *osize_p)
{
	struct ident_filter *ident = (struct ident_filter *)filter;
	static const char head[] = "$Id";

	if (!input) {
		/* drain upon eof */
		switch (ident->state) {
		default:
			FUNC2(&ident->left, head, ident->state);
			/* fallthrough */
		case IDENT_SKIPPING:
			/* fallthrough */
		case IDENT_DRAINING:
			FUNC0(ident, &output, osize_p);
		}
		return 0;
	}

	while (*isize_p || (ident->state == IDENT_DRAINING)) {
		int ch;

		if (ident->state == IDENT_DRAINING) {
			FUNC0(ident, &output, osize_p);
			if (!*osize_p)
				break;
			continue;
		}

		ch = *(input++);
		(*isize_p)--;

		if (ident->state == IDENT_SKIPPING) {
			/*
			 * Skipping until '$' or LF, but keeping them
			 * in case it is a foreign ident.
			 */
			FUNC3(&ident->left, ch);
			if (ch != '\n' && ch != '$')
				continue;
			if (ch == '$' && !FUNC1(ident->left.buf)) {
				FUNC5(&ident->left, sizeof(head) - 1);
				FUNC4(&ident->left, ident->ident);
			}
			ident->state = IDENT_DRAINING;
			continue;
		}

		if (ident->state < sizeof(head) &&
		    head[ident->state] == ch) {
			ident->state++;
			continue;
		}

		if (ident->state)
			FUNC2(&ident->left, head, ident->state);
		if (ident->state == sizeof(head) - 1) {
			if (ch != ':' && ch != '$') {
				FUNC3(&ident->left, ch);
				ident->state = 0;
				continue;
			}

			if (ch == ':') {
				FUNC3(&ident->left, ch);
				ident->state = IDENT_SKIPPING;
			} else {
				FUNC4(&ident->left, ident->ident);
				ident->state = IDENT_DRAINING;
			}
			continue;
		}

		FUNC3(&ident->left, ch);
		ident->state = IDENT_DRAINING;
	}
	return 0;
}