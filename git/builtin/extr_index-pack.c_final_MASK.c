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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct packed_git {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct packed_git* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ do_fsck_object ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 scalar_t__ from_stdin ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC8 (unsigned char*) ; 
 scalar_t__ input_buffer ; 
 int /*<<< orphan*/  input_fd ; 
 scalar_t__ input_len ; 
 scalar_t__ input_offset ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct packed_git*) ; 
 char* FUNC10 (struct strbuf*,unsigned char*,char*) ; 
 int /*<<< orphan*/  output_fd ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,char const*,unsigned char*,char const**) ; 
 int FUNC17 (int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC18(const char *final_pack_name, const char *curr_pack_name,
		  const char *final_index_name, const char *curr_index_name,
		  const char *keep_msg, const char *promisor_msg,
		  unsigned char *hash)
{
	const char *report = "pack";
	struct strbuf pack_name = STRBUF_INIT;
	struct strbuf index_name = STRBUF_INIT;
	int err;

	if (!from_stdin) {
		FUNC3(input_fd);
	} else {
		FUNC7(output_fd, curr_pack_name);
		err = FUNC3(output_fd);
		if (err)
			FUNC5(FUNC0("error while closing pack file"));
	}

	if (keep_msg)
		FUNC16("keep", keep_msg, final_pack_name, hash,
				   &report);
	if (promisor_msg)
		FUNC16("promisor", promisor_msg, final_pack_name,
				   hash, NULL);

	if (final_pack_name != curr_pack_name) {
		if (!final_pack_name)
			final_pack_name = FUNC10(&pack_name, hash, "pack");
		if (FUNC6(curr_pack_name, final_pack_name))
			FUNC4(FUNC0("cannot store pack file"));
	} else if (from_stdin)
		FUNC2(final_pack_name, 0444);

	if (final_index_name != curr_index_name) {
		if (!final_index_name)
			final_index_name = FUNC10(&index_name, hash, "idx");
		if (FUNC6(curr_index_name, final_index_name))
			FUNC4(FUNC0("cannot store index file"));
	} else
		FUNC2(final_index_name, 0444);

	if (do_fsck_object) {
		struct packed_git *p;
		p = FUNC1(final_index_name, FUNC14(final_index_name), 0);
		if (p)
			FUNC9(the_repository, p);
	}

	if (!from_stdin) {
		FUNC11("%s\n", FUNC8(hash));
	} else {
		struct strbuf buf = STRBUF_INIT;

		FUNC12(&buf, "%s\t%s\n", report, FUNC8(hash));
		FUNC15(1, buf.buf, buf.len);
		FUNC13(&buf);

		/*
		 * Let's just mimic git-unpack-objects here and write
		 * the last part of the input buffer to stdout.
		 */
		while (input_len) {
			err = FUNC17(1, input_buffer + input_offset, input_len);
			if (err <= 0)
				break;
			input_len -= err;
			input_offset += err;
		}
	}

	FUNC13(&index_name);
	FUNC13(&pack_name);
}