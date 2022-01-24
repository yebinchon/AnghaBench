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
struct hid_item {int kind; int /*<<< orphan*/  usage; } ;
struct hid_data {int dummy; } ;
typedef  int /*<<< orphan*/  report_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
#define  hid_collection 132 
 int /*<<< orphan*/  FUNC2 (char*,struct hid_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_data*) ; 
#define  hid_endcollection 131 
#define  hid_feature 130 
 scalar_t__ FUNC4 (struct hid_data*,struct hid_item*) ; 
#define  hid_input 129 
#define  hid_output 128 
 struct hid_data* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC8(report_desc_t r)
{
	struct hid_data	*d = NULL;
	struct hid_item	 h;

	for (d = FUNC5(r, ~0, -1); FUNC4(d, &h); ) {
		switch (h.kind) {
		case hid_collection:
			FUNC1(stdout,
"Collection page=%s usage=%s\n", FUNC7(FUNC0(h.usage)),
				 FUNC6(h.usage));
			break;

		case hid_endcollection:
			FUNC1(stdout, "End collection\n");
			break;

		case hid_input:
			FUNC2("Input  ", &h);
			break;

		case hid_output:
			FUNC2("Output ", &h);
			break;

		case hid_feature:
			FUNC2("Feature", &h);
			break;
		}
	}

	FUNC3(d);
}