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
struct transport {char* url; TYPE_1__* smart_options; int /*<<< orphan*/  family; } ;
struct refspec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAS_OPT_NAME ; 
 int /*<<< orphan*/  PUSH_COLOR_ERROR ; 
 int /*<<< orphan*/  PUSH_COLOR_RESET ; 
 unsigned int REJECT_ALREADY_EXISTS ; 
 unsigned int REJECT_FETCH_FIRST ; 
 unsigned int REJECT_NEEDS_FORCE ; 
 unsigned int REJECT_NON_FF_HEAD ; 
 unsigned int REJECT_NON_FF_OTHER ; 
 int /*<<< orphan*/  TRANS_OPT_RECEIVEPACK ; 
 int /*<<< orphan*/  TRANS_OPT_THIN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cas ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  family ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  progress ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char* receivepack ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ thin ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct transport*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct transport*,struct refspec*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (struct transport*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct transport*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int FUNC17(struct transport *transport, struct refspec *rs,
			     int flags)
{
	int err;
	unsigned int reject_reasons;

	FUNC16(transport, verbosity, progress);
	transport->family = family;

	if (receivepack)
		FUNC15(transport,
				     TRANS_OPT_RECEIVEPACK, receivepack);
	FUNC15(transport, TRANS_OPT_THIN, thin ? "yes" : NULL);

	if (!FUNC9(&cas)) {
		if (!transport->smart_options)
			FUNC6("underlying transport does not support --%s option",
			    CAS_OPT_NAME);
		transport->smart_options->cas = &cas;
	}

	if (verbosity > 0)
		FUNC8(stderr, FUNC0("Pushing to %s\n"), transport->url);
	FUNC11("push", "transport_push", the_repository);
	err = FUNC14(the_repository, transport,
			     rs, flags, &reject_reasons);
	FUNC12("push", "transport_push", the_repository);
	if (err != 0) {
		FUNC8(stderr, "%s", FUNC10(PUSH_COLOR_ERROR));
		FUNC7(FUNC0("failed to push some refs to '%s'"), transport->url);
		FUNC8(stderr, "%s", FUNC10(PUSH_COLOR_RESET));
	}

	err |= FUNC13(transport);
	if (!err)
		return 0;

	if (reject_reasons & REJECT_NON_FF_HEAD) {
		FUNC2();
	} else if (reject_reasons & REJECT_NON_FF_OTHER) {
		FUNC1();
	} else if (reject_reasons & REJECT_ALREADY_EXISTS) {
		FUNC3();
	} else if (reject_reasons & REJECT_FETCH_FIRST) {
		FUNC4();
	} else if (reject_reasons & REJECT_NEEDS_FORCE) {
		FUNC5();
	}

	return 1;
}