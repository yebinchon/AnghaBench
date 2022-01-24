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
struct pack_header {void* hdr_entries; void* hdr_version; void* hdr_signature; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct TYPE_2__ {int /*<<< orphan*/  rawsz; int /*<<< orphan*/  (* final_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PACK_SIGNATURE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ buffer ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int dry_run ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsck_options ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int has_errors ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int len ; 
 int /*<<< orphan*/  max_input_size ; 
 scalar_t__ offset ; 
 int quiet ; 
 scalar_t__ read_replace_refs ; 
 int recover ; 
 scalar_t__ FUNC9 (char const*,char*,char const**) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int strict ; 
 int /*<<< orphan*/  FUNC12 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  unpack_usage ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (int,scalar_t__,int) ; 

int FUNC22(int argc, const char **argv, const char *prefix)
{
	int i;
	struct object_id oid;

	read_replace_refs = 0;

	FUNC5(git_default_config, NULL);

	quiet = !FUNC8(2);

	for (i = 1 ; i < argc; i++) {
		const char *arg = argv[i];

		if (*arg == '-') {
			if (!FUNC11(arg, "-n")) {
				dry_run = 1;
				continue;
			}
			if (!FUNC11(arg, "-q")) {
				quiet = 1;
				continue;
			}
			if (!FUNC11(arg, "-r")) {
				recover = 1;
				continue;
			}
			if (!FUNC11(arg, "--strict")) {
				strict = 1;
				continue;
			}
			if (FUNC9(arg, "--strict=", &arg)) {
				strict = 1;
				FUNC4(&fsck_options, arg);
				continue;
			}
			if (FUNC10(arg, "--pack_header=")) {
				struct pack_header *hdr;
				char *c;

				hdr = (struct pack_header *)buffer;
				hdr->hdr_signature = FUNC7(PACK_SIGNATURE);
				hdr->hdr_version = FUNC7(FUNC12(arg + 14, &c, 10));
				if (*c != ',')
					FUNC1("bad %s", arg);
				hdr->hdr_entries = FUNC7(FUNC12(c + 1, &c, 10));
				if (*c)
					FUNC1("bad %s", arg);
				len = sizeof(*hdr);
				continue;
			}
			if (FUNC9(arg, "--max-input-size=", &arg)) {
				max_input_size = FUNC13(arg, NULL, 10);
				continue;
			}
			FUNC18(unpack_usage);
		}

		/* We don't take any non-flag arguments now.. Maybe some day */
		FUNC18(unpack_usage);
	}
	the_hash_algo->init_fn(&ctx);
	FUNC17();
	the_hash_algo->update_fn(&ctx, buffer, offset);
	the_hash_algo->final_fn(oid.hash, &ctx);
	if (strict) {
		FUNC20();
		if (FUNC3(&fsck_options))
			FUNC1(FUNC0("fsck error in pack objects"));
	}
	if (!FUNC6(FUNC2(the_hash_algo->rawsz), oid.hash))
		FUNC1("final sha1 did not match");
	FUNC19(the_hash_algo->rawsz);

	/* Write the last part of the buffer to stdout */
	while (len) {
		int ret = FUNC21(1, buffer + offset, len);
		if (ret <= 0)
			break;
		len -= ret;
		offset += ret;
	}

	/* All done */
	return has_errors;
}