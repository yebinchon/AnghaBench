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
struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int /*<<< orphan*/  var; int /*<<< orphan*/  strlen; struct snmp_index_entry* string; } ;
struct snmp_index_entry {struct snmp_index_entry* string; int /*<<< orphan*/  index_list; int /*<<< orphan*/  var; int /*<<< orphan*/  strlen; } ;
struct enum_pairs {int dummy; } ;
typedef  int int32_t ;
typedef  enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {int /*<<< orphan*/  lno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_INDEX ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int SNMP_INDEXES_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TOK_BITS ; 
 int TOK_DEFTYPE ; 
 int TOK_ENUM ; 
 int TOK_STR ; 
 int TOK_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct snmp_index_entry* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct enum_pairs*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct snmp_index_entry*) ; 
 int FUNC5 (struct snmp_toolinfo*) ; 
 TYPE_1__* input ; 
 int FUNC6 (struct snmp_toolinfo*,int*,int*,struct enum_pairs**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct snmp_index_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct enum_pairs*,int,int) ; 
 int FUNC10 (struct snmp_toolinfo*,struct snmp_index_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC14(struct snmp_toolinfo *snmptoolctx, struct snmp_oid2str *obj)
{
	int32_t i, tok;
	enum snmp_tc tc;
	struct snmp_index_entry *entry;

	if ((entry = FUNC2(1, sizeof(struct snmp_index_entry))) == NULL) {
		FUNC12(LOG_ERR, "malloc() failed: %s", FUNC11(errno));
		return (-1);
	}

	FUNC0(&(entry->index_list));

	for (i = 0, tok = FUNC5(snmptoolctx); i < SNMP_INDEXES_MAX; i++) {
		int32_t syntax;
		struct enum_pairs *enums = NULL;

		if (tok != TOK_TYPE && tok != TOK_DEFTYPE && tok != TOK_ENUM &&
		    tok != TOK_BITS)
			break;

		if ((syntax = FUNC6(snmptoolctx, &tok, &tc, &enums)) < 0) {
			FUNC3(enums);
			FUNC8(&(entry->index_list));
			FUNC4(entry);
			return (-1);
		}

		if (FUNC9(&(entry->index_list), enums, syntax,
		    tc) < 0) {
			FUNC8(&(entry->index_list));
			FUNC3(enums);
			FUNC4(entry);
			return (-1);
		}
	}

	if (i == 0 || i > SNMP_INDEXES_MAX) {
		FUNC13("Bad number of indexes at line %d", input->lno);
		FUNC8(&(entry->index_list));
		FUNC4(entry);
		return (-1);
	}

	if (tok != TOK_STR) {
		FUNC13("String expected after indexes at line %d", input->lno);
		FUNC8(&(entry->index_list));
		FUNC4(entry);
		return (-1);
	}

	entry->string = obj->string;
	entry->strlen = obj->strlen;
	FUNC1(&(entry->var), &(obj->var));

	if ((i = FUNC10(snmptoolctx, entry)) < 0) {
		FUNC8(&(entry->index_list));
		FUNC4(entry);
		return (-1);
	} else if (i == 0) {
		/* Same entry already present in lists. */
		FUNC4(entry->string);
		FUNC4(entry);
		return (0);
	}

	(void) FUNC7(ENTRY_INDEX, entry);

	return (1);
}