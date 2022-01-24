#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  tp_col; int /*<<< orphan*/  tp_row; } ;
struct TYPE_7__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_9__ {TYPE_4__ tr_end; TYPE_1__ tr_begin; } ;
typedef  TYPE_3__ term_rect_t ;
typedef  int /*<<< orphan*/  term_attr_t ;
typedef  int /*<<< orphan*/  teken_char_t ;
struct winsize {int /*<<< orphan*/  ws_col; int /*<<< orphan*/  ws_row; } ;
struct terminal {int tm_flags; TYPE_2__* tm_class; int /*<<< orphan*/  tm_emulator; struct winsize tm_winsize; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* tc_fill ) (struct terminal*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct terminal*) ; 
 int /*<<< orphan*/  FUNC2 (struct terminal*) ; 
 int TF_MUTE ; 
 int /*<<< orphan*/  FUNC3 (struct terminal*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct terminal*) ; 

void
FUNC7(struct terminal *tm, const struct winsize *size,
    int blank, const term_attr_t *attr)
{
	term_rect_t r;

	tm->tm_winsize = *size;

	r.tr_begin.tp_row = r.tr_begin.tp_col = 0;
	r.tr_end.tp_row = size->ws_row;
	r.tr_end.tp_col = size->ws_col;

	FUNC1(tm);
	if (blank == 0)
		FUNC5(&tm->tm_emulator, &r.tr_end);
	else
		FUNC4(&tm->tm_emulator, &r.tr_end);
	FUNC2(tm);

	if ((blank != 0) && !(tm->tm_flags & TF_MUTE))
		tm->tm_class->tc_fill(tm, &r,
		    FUNC0((teken_char_t)' ', attr));

	FUNC6(tm);
}