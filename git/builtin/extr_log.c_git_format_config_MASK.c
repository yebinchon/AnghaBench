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
struct strbuf {int dummy; } ;
struct TYPE_2__ {int use_default_notes; int /*<<< orphan*/  extra_notes_refs; } ;
struct rev_info {int show_notes; TYPE_1__ notes_opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  COVER_AUTO ; 
 int /*<<< orphan*/  COVER_OFF ; 
 int /*<<< orphan*/  COVER_ON ; 
 int /*<<< orphan*/  IDENT_NO_DATE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  THREAD_DEEP ; 
 int /*<<< orphan*/  THREAD_SHALLOW ; 
 int /*<<< orphan*/  THREAD_UNSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int auto_number ; 
 void* base_auto ; 
 int /*<<< orphan*/  config_cover_letter ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  config_output_directory ; 
 int /*<<< orphan*/  cover_from_description_mode ; 
 void* default_attach ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* do_signoff ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  extra_cc ; 
 int /*<<< orphan*/  extra_to ; 
 int /*<<< orphan*/  fmt_patch_suffix ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * from ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (char const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC10 (char const*,char const*,void*) ; 
 int FUNC11 (char const*) ; 
 char const* git_version_string ; 
 void* numbered ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  signature_file ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char const*) ; 
 char const* FUNC14 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  thread ; 
 void* FUNC18 (char const*) ; 

__attribute__((used)) static int FUNC19(const char *var, const char *value, void *cb)
{
	struct rev_info *rev = cb;

	if (!FUNC16(var, "format.headers")) {
		if (!value)
			FUNC3(FUNC0("format.headers without value"));
		FUNC1(value);
		return 0;
	}
	if (!FUNC16(var, "format.suffix"))
		return FUNC9(&fmt_patch_suffix, var, value);
	if (!FUNC16(var, "format.to")) {
		if (!value)
			return FUNC2(var);
		FUNC17(&extra_to, value);
		return 0;
	}
	if (!FUNC16(var, "format.cc")) {
		if (!value)
			return FUNC2(var);
		FUNC17(&extra_cc, value);
		return 0;
	}
	if (!FUNC16(var, "diff.color") || !FUNC16(var, "color.diff") ||
	    !FUNC16(var, "color.ui") || !FUNC16(var, "diff.submodule")) {
		return 0;
	}
	if (!FUNC16(var, "format.numbered")) {
		if (value && !FUNC15(value, "auto")) {
			auto_number = 1;
			return 0;
		}
		numbered = FUNC7(var, value);
		auto_number = auto_number && numbered;
		return 0;
	}
	if (!FUNC16(var, "format.attach")) {
		if (value && *value)
			default_attach = FUNC18(value);
		else
			default_attach = FUNC18(git_version_string);
		return 0;
	}
	if (!FUNC16(var, "format.thread")) {
		if (value && !FUNC15(value, "deep")) {
			thread = THREAD_DEEP;
			return 0;
		}
		if (value && !FUNC15(value, "shallow")) {
			thread = THREAD_SHALLOW;
			return 0;
		}
		thread = FUNC7(var, value) ? THREAD_SHALLOW : THREAD_UNSET;
		return 0;
	}
	if (!FUNC16(var, "format.signoff")) {
		do_signoff = FUNC7(var, value);
		return 0;
	}
	if (!FUNC16(var, "format.signature"))
		return FUNC9(&signature, var, value);
	if (!FUNC16(var, "format.signaturefile"))
		return FUNC8(&signature_file, var, value);
	if (!FUNC16(var, "format.coverletter")) {
		if (value && !FUNC15(value, "auto")) {
			config_cover_letter = COVER_AUTO;
			return 0;
		}
		config_cover_letter = FUNC7(var, value) ? COVER_ON : COVER_OFF;
		return 0;
	}
	if (!FUNC16(var, "format.outputdirectory"))
		return FUNC9(&config_output_directory, var, value);
	if (!FUNC16(var, "format.useautobase")) {
		base_auto = FUNC7(var, value);
		return 0;
	}
	if (!FUNC16(var, "format.from")) {
		int b = FUNC11(value);
		FUNC5(from);
		if (b < 0)
			from = FUNC18(value);
		else if (b)
			from = FUNC18(FUNC6(IDENT_NO_DATE));
		else
			from = NULL;
		return 0;
	}
	if (!FUNC16(var, "format.notes")) {
		struct strbuf buf = STRBUF_INIT;
		int b = FUNC11(value);
		if (!b)
			return 0;
		rev->show_notes = 1;
		if (b < 0) {
			FUNC13(&buf, value);
			FUNC4(&buf);
			FUNC17(&rev->notes_opt.extra_notes_refs,
					FUNC14(&buf, NULL));
		} else {
			rev->notes_opt.use_default_notes = 1;
		}
		return 0;
	}
	if (!FUNC16(var, "format.coverfromdescription")) {
		cover_from_description_mode = FUNC12(value);
		return 0;
	}

	return FUNC10(var, value, cb);
}