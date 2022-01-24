#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct refspec {int dummy; } ;
struct remote {scalar_t__ prune; scalar_t__ prune_tags; struct refspec fetch; } ;
struct TYPE_7__ {scalar_t__ nr; } ;
struct TYPE_6__ {TYPE_2__* server_options; } ;

/* Variables and functions */
 scalar_t__ PRUNE_BY_DEFAULT ; 
 scalar_t__ PRUNE_TAGS_BY_DEFAULT ; 
 struct refspec REFSPEC_INIT_FETCH ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 char const* TAG_REFSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,struct refspec*) ; 
 scalar_t__ fetch_prune_config ; 
 scalar_t__ fetch_prune_tags_config ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* gtransport ; 
 TYPE_1__* FUNC5 (struct remote*,int) ; 
 scalar_t__ prune ; 
 scalar_t__ prune_tags ; 
 int /*<<< orphan*/  FUNC6 (struct refspec*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct refspec*) ; 
 int FUNC8 (struct remote*,int /*<<< orphan*/ ) ; 
 TYPE_2__ server_options ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  unlock_pack ; 
 int /*<<< orphan*/  unlock_pack_on_signal ; 
 char* FUNC14 (char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC15(struct remote *remote, int argc, const char **argv, int prune_tags_ok)
{
	struct refspec rs = REFSPEC_INIT_FETCH;
	int i;
	int exit_code;
	int maybe_prune_tags;
	int remote_via_config = FUNC8(remote, 0);

	if (!remote)
		FUNC2(FUNC0("No remote repository specified.  Please, specify either a URL or a\n"
		    "remote name from which new revisions should be fetched."));

	gtransport = FUNC5(remote, 1);

	if (prune < 0) {
		/* no command line request */
		if (0 <= remote->prune)
			prune = remote->prune;
		else if (0 <= fetch_prune_config)
			prune = fetch_prune_config;
		else
			prune = PRUNE_BY_DEFAULT;
	}

	if (prune_tags < 0) {
		/* no command line request */
		if (0 <= remote->prune_tags)
			prune_tags = remote->prune_tags;
		else if (0 <= fetch_prune_tags_config)
			prune_tags = fetch_prune_tags_config;
		else
			prune_tags = PRUNE_TAGS_BY_DEFAULT;
	}

	maybe_prune_tags = prune_tags_ok && prune_tags;
	if (maybe_prune_tags && remote_via_config)
		FUNC6(&remote->fetch, TAG_REFSPEC);

	if (maybe_prune_tags && (argc || !remote_via_config))
		FUNC6(&rs, TAG_REFSPEC);

	for (i = 0; i < argc; i++) {
		if (!FUNC12(argv[i], "tag")) {
			char *tag;
			i++;
			if (i >= argc)
				FUNC2(FUNC0("You need to specify a tag name."));

			tag = FUNC14("refs/tags/%s:refs/tags/%s",
				      argv[i], argv[i]);
			FUNC6(&rs, tag);
			FUNC4(tag);
		} else {
			FUNC6(&rs, argv[i]);
		}
	}

	if (server_options.nr)
		gtransport->server_options = &server_options;

	FUNC11(unlock_pack_on_signal);
	FUNC1(unlock_pack);
	FUNC10(SIGPIPE, SIG_IGN);
	exit_code = FUNC3(gtransport, &rs);
	FUNC9(SIGPIPE);
	FUNC7(&rs);
	FUNC13(gtransport);
	gtransport = NULL;
	return exit_code;
}