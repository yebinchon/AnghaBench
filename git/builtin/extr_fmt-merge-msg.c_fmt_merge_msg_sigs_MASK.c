#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; struct object_id* util; } ;

/* Variables and functions */
 int OBJ_TAG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,struct strbuf*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__ origins ; 
 unsigned long FUNC2 (char*,unsigned long) ; 
 char* FUNC3 (struct object_id*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,unsigned long,char*,unsigned long,struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct strbuf *out)
{
	int i, tag_number = 0, first_tag = 0;
	struct strbuf tagbuf = STRBUF_INIT;

	for (i = 0; i < origins.nr; i++) {
		struct object_id *oid = origins.items[i].util;
		enum object_type type;
		unsigned long size, len;
		char *buf = FUNC3(oid, &type, &size);
		struct strbuf sig = STRBUF_INIT;

		if (!buf || type != OBJ_TAG)
			goto next;
		len = FUNC2(buf, size);

		if (size == len)
			; /* merely annotated */
		else if (FUNC11(buf, len, buf + len, size - len, &sig, NULL)) {
			if (!sig.len)
				FUNC7(&sig, "gpg verification failed.\n");
		}

		if (!tag_number++) {
			FUNC0(&tagbuf, &sig, buf, len);
			first_tag = i;
		} else {
			if (tag_number == 2) {
				struct strbuf tagline = STRBUF_INIT;
				FUNC6(&tagline, '\n');
				FUNC4(&tagline,
						origins.items[first_tag].string,
						FUNC10(origins.items[first_tag].string));
				FUNC8(&tagbuf, 0, tagline.buf,
					      tagline.len);
				FUNC9(&tagline);
			}
			FUNC6(&tagbuf, '\n');
			FUNC4(&tagbuf,
					origins.items[i].string,
					FUNC10(origins.items[i].string));
			FUNC0(&tagbuf, &sig, buf, len);
		}
		FUNC9(&sig);
	next:
		FUNC1(buf);
	}
	if (tagbuf.len) {
		FUNC6(out, '\n');
		FUNC5(out, &tagbuf);
	}
	FUNC9(&tagbuf);
}