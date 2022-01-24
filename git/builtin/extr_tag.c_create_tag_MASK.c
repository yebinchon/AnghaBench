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
struct object_id {int dummy; } ;
struct create_tag_options {scalar_t__ cleanup_mode; int /*<<< orphan*/  sign; scalar_t__ message_given; scalar_t__ use_editor; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 scalar_t__ CLEANUP_ALL ; 
 scalar_t__ CLEANUP_NONE ; 
 int /*<<< orphan*/  IDENT_STRICT ; 
 int OBJ_NONE ; 
 int OBJ_TAG ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ advice_nested_tag ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (struct strbuf*,int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  comment_line_char ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*) ; 
 scalar_t__ FUNC12 (char*,struct strbuf*,int /*<<< orphan*/ *) ; 
 char* message_advice_nested_tag ; 
 int FUNC13 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct object_id const*) ; 
 int FUNC15 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*,int) ; 
 char* tag_template ; 
 char* tag_template_nocleanup ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int,struct object_id*) ; 

__attribute__((used)) static void FUNC27(const struct object_id *object, const char *object_ref,
		       const char *tag,
		       struct strbuf *buf, struct create_tag_options *opt,
		       struct object_id *prev, struct object_id *result)
{
	enum object_type type;
	struct strbuf header = STRBUF_INIT;
	char *path = NULL;

	type = FUNC13(the_repository, object, NULL);
	if (type <= OBJ_NONE)
		FUNC4(FUNC0("bad object type."));

	if (type == OBJ_TAG && advice_nested_tag)
		FUNC1(FUNC0(message_advice_nested_tag), tag, object_ref);

	FUNC17(&header,
		    "object %s\n"
		    "type %s\n"
		    "tag %s\n"
		    "tagger %s\n\n",
		    FUNC14(object),
		    FUNC23(type),
		    tag,
		    FUNC9(IDENT_STRICT));

	if (!opt->message_given || opt->use_editor) {
		int fd;

		/* write the template message before editing: */
		path = FUNC10("TAG_EDITMSG");
		fd = FUNC15(path, O_CREAT | O_TRUNC | O_WRONLY, 0600);
		if (fd < 0)
			FUNC5(FUNC0("could not create file '%s'"), path);

		if (opt->message_given) {
			FUNC25(fd, buf->buf, buf->len);
			FUNC21(buf);
		} else if (!FUNC11(prev)) {
			FUNC26(fd, prev);
		} else {
			struct strbuf buf = STRBUF_INIT;
			FUNC16(&buf, '\n');
			if (opt->cleanup_mode == CLEANUP_ALL)
				FUNC18(&buf, FUNC0(tag_template), tag, comment_line_char);
			else
				FUNC18(&buf, FUNC0(tag_template_nocleanup), tag, comment_line_char);
			FUNC25(fd, buf.buf, buf.len);
			FUNC20(&buf);
		}
		FUNC3(fd);

		if (FUNC12(path, buf, NULL)) {
			FUNC7(stderr,
			"%s", FUNC0("Please supply the message using either -m or -F option.\n"));
			FUNC6(1);
		}
	}

	if (opt->cleanup_mode != CLEANUP_NONE)
		FUNC22(buf, opt->cleanup_mode == CLEANUP_ALL);

	if (!opt->message_given && !buf->len)
		FUNC4(FUNC0("no tag message?"));

	FUNC19(buf, 0, header.buf, header.len);
	FUNC20(&header);

	if (FUNC2(buf, opt->sign, result) < 0) {
		if (path)
			FUNC7(stderr, FUNC0("The tag message has been left in %s\n"),
				path);
		FUNC6(128);
	}
	if (path) {
		FUNC24(path);
		FUNC8(path);
	}
}