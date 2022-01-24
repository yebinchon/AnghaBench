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
struct partedit_item {int indentation; char* name; char* type; char* mountpoint; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  A_NORMAL ; 
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int /*<<< orphan*/  HN_DECIMAL ; 
 int MARGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_attr ; 
 int /*<<< orphan*/  item_selected_attr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(WINDOW *partitions, struct partedit_item *items,
    int item, int nscroll, int selected)
{
	chtype attr = A_NORMAL;
	char sizetext[16];
	int y = item - nscroll + 1;

	FUNC2(partitions, selected ? item_selected_attr : item_attr);
	FUNC3(partitions, y, MARGIN + items[item].indentation*2);
	FUNC0(partitions, items[item].name, 10, &attr);
	FUNC3(partitions, y, 17);
	FUNC2(partitions, item_attr);

	FUNC1(sizetext, 7, items[item].size, "B", HN_AUTOSCALE,
	    HN_DECIMAL);
	FUNC0(partitions, sizetext, 8, &attr);
	FUNC3(partitions, y, 25);
	FUNC0(partitions, items[item].type, 15, &attr);
	FUNC3(partitions, y, 40);
	if (items[item].mountpoint != NULL)
		FUNC0(partitions, items[item].mountpoint, 8, &attr);
}