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
struct hid_item {int kind; int /*<<< orphan*/  usage; int /*<<< orphan*/  collection; } ;
struct hid_data {int dummy; } ;
typedef  int /*<<< orphan*/  report_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct hid_item*) ; 
#define  hid_collection 132 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_data*) ; 
#define  hid_endcollection 131 
#define  hid_feature 130 
 scalar_t__ FUNC4 (struct hid_data*,struct hid_item*) ; 
#define  hid_input 129 
#define  hid_output 128 
 int FUNC5 (int /*<<< orphan*/ ,int const,int) ; 
 struct hid_data* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(report_desc_t r)
{
	struct hid_data *d;
	struct hid_item h;
	int size;

	for (d = FUNC6(r, ~0, -1); FUNC4(d, &h); ) {
		switch (h.kind) {
		case hid_collection:
			FUNC9("Collection type=%s page=%s usage=%s\n",
			       FUNC2(h.collection),
			       FUNC8(FUNC0(h.usage)),
			       FUNC7(h.usage));
			break;
		case hid_endcollection:
			FUNC9("End collection\n");
			break;
		case hid_input:
			FUNC1("Input  ", &h);
			break;
		case hid_output:
			FUNC1("Output ", &h);
			break;
		case hid_feature:
			FUNC1("Feature", &h);
			break;
		}
	}
	FUNC3(d);
	size = FUNC5(r, hid_input, -1);
	FUNC9("Total   input size %d bytes\n", size);

	size = FUNC5(r, hid_output, -1);
	FUNC9("Total  output size %d bytes\n", size);

	size = FUNC5(r, hid_feature, -1);
	FUNC9("Total feature size %d bytes\n", size);
}