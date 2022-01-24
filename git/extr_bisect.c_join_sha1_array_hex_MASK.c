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
struct strbuf {int dummy; } ;
struct oid_array {int nr; scalar_t__ oid; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC4(struct oid_array *array, char delim)
{
	struct strbuf joined_hexs = STRBUF_INIT;
	int i;

	for (i = 0; i < array->nr; i++) {
		FUNC2(&joined_hexs, FUNC0(array->oid + i));
		if (i + 1 < array->nr)
			FUNC1(&joined_hexs, delim);
	}

	return FUNC3(&joined_hexs, NULL);
}