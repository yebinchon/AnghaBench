#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct note_data {TYPE_1__ buf; int /*<<< orphan*/  edit_path; scalar_t__ given; scalar_t__ use_editor; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* note_template ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(const struct object_id *object, struct note_data *d,
		const struct object_id *old_note)
{
	if (d->use_editor || !d->given) {
		int fd;
		struct strbuf buf = STRBUF_INIT;

		/* write the template message before editing: */
		d->edit_path = FUNC5("NOTES_EDITMSG");
		fd = FUNC7(d->edit_path, O_CREAT | O_TRUNC | O_WRONLY, 0600);
		if (fd < 0)
			FUNC4(FUNC0("could not create file '%s'"), d->edit_path);

		if (d->given)
			FUNC15(fd, d->buf.buf, d->buf.len);
		else if (old_note)
			FUNC2(fd, old_note);

		FUNC9(&buf, '\n');
		FUNC8(&buf, "\n", FUNC13("\n"));
		FUNC8(&buf, FUNC0(note_template), FUNC13(FUNC0(note_template)));
		FUNC9(&buf, '\n');
		FUNC15(fd, buf.buf, buf.len);

		FUNC14(fd, object);

		FUNC1(fd);
		FUNC10(&buf);
		FUNC11(&d->buf);

		if (FUNC6(d->edit_path, &d->buf, NULL)) {
			FUNC3(FUNC0("please supply the note contents using either -m or -F option"));
		}
		FUNC12(&d->buf, 1);
	}
}