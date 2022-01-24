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
struct ber_element {TYPE_1__* be_next; struct ber_element* be_sub; } ;
struct ber {int fd; int /*<<< orphan*/ * br_wbuf; } ;
struct aldap_page_control {char* size; int cookie_len; int /*<<< orphan*/ * cookie; } ;
struct TYPE_2__ {int be_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ber*) ; 
 int /*<<< orphan*/  FUNC1 (struct ber_element*) ; 
 struct ber_element* FUNC2 (struct ber*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ber_element*,char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC4 (struct ber*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aldap_page_control*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

struct aldap_page_control *
FUNC8(struct ber_element *control, size_t len) 
{
	char *oid, *s;
	char *encoded;
	struct ber b;
	struct ber_element *elm;
	struct aldap_page_control *page;

	b.br_wbuf = NULL;
	b.fd = -1;
	FUNC3(control, "ss", &oid, &encoded);
	FUNC4(&b, encoded, control->be_next->be_len);
	elm = FUNC2(&b, NULL);

	if ((page = FUNC6(sizeof(struct aldap_page_control))) == NULL) {
		if (elm != NULL)
			FUNC1(elm);
		FUNC0(&b);
		return NULL;
	}

	FUNC3(elm->be_sub, "is", &page->size, &s);
	page->cookie_len = elm->be_sub->be_next->be_len;

	if ((page->cookie = FUNC6(page->cookie_len)) == NULL) {
		if (elm != NULL)
			FUNC1(elm);
		FUNC0(&b);
		FUNC5(page);
		return NULL;
	}
	FUNC7(page->cookie, s, page->cookie_len);

	FUNC1(elm);
	FUNC0(&b);
	return page;
}