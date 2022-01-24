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
struct string_list_item {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  extra_cc ; 
 int /*<<< orphan*/  extra_hdr ; 
 int /*<<< orphan*/  extra_to ; 
 struct string_list_item* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC3(const char *value)
{
	struct string_list_item *item;
	int len = FUNC1(value);
	while (len && value[len - 1] == '\n')
		len--;

	if (!FUNC2(value, "to: ", 4)) {
		item = FUNC0(&extra_to, value + 4);
		len -= 4;
	} else if (!FUNC2(value, "cc: ", 4)) {
		item = FUNC0(&extra_cc, value + 4);
		len -= 4;
	} else {
		item = FUNC0(&extra_hdr, value);
	}

	item->string[len] = '\0';
}