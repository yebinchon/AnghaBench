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
struct intr_irqsrc {char* isrc_name; scalar_t__ isrc_index; } ;

/* Variables and functions */
 int INTRNAME_LEN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  isrc_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,...) ; 

__attribute__((used)) static void
FUNC3(struct intr_irqsrc *isrc, const char *name)
{
	char str[INTRNAME_LEN];

	FUNC1(&isrc_table_lock, MA_OWNED);

	if (name != NULL) {
		FUNC2(str, INTRNAME_LEN, "%s: %s", isrc->isrc_name, name);
		FUNC0(str, isrc->isrc_index);
		FUNC2(str, INTRNAME_LEN, "stray %s: %s", isrc->isrc_name,
		    name);
		FUNC0(str, isrc->isrc_index + 1);
	} else {
		FUNC2(str, INTRNAME_LEN, "%s:", isrc->isrc_name);
		FUNC0(str, isrc->isrc_index);
		FUNC2(str, INTRNAME_LEN, "stray %s:", isrc->isrc_name);
		FUNC0(str, isrc->isrc_index + 1);
	}
}