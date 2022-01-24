#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ar_valid_arg; int /*<<< orphan*/ * ar_arg_text; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;

/* Variables and functions */
 int ARG_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int) ; 
 int ARG_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_AUDITTEXT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct kaudit_record* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

void
FUNC5(const char *text)
{
	struct kaudit_record *ar;

	FUNC1(text != NULL, ("audit_arg_text: text == NULL"));

	ar = FUNC2();
	if (ar == NULL)
		return;

	/* Invalidate the text string */
	ar->k_ar.ar_valid_arg &= (ARG_ALL ^ ARG_TEXT);

	if (ar->k_ar.ar_arg_text == NULL)
		ar->k_ar.ar_arg_text = FUNC3(MAXPATHLEN, M_AUDITTEXT,
		    M_WAITOK);

	FUNC4(ar->k_ar.ar_arg_text, text, MAXPATHLEN);
	FUNC0(ar, ARG_TEXT);
}