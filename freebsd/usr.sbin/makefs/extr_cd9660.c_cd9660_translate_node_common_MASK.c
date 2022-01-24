#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  iso9660_disk ;
struct TYPE_7__ {scalar_t__ fileDataLength; TYPE_1__* node; TYPE_5__* isoDirRecord; } ;
typedef  TYPE_2__ cd9660node ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  date; } ;
struct TYPE_8__ {int /*<<< orphan*/  st_mtime; scalar_t__ st_ino; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ISO_FILENAME_MAXLENGTH_WITH_PADDING ; 
 int /*<<< orphan*/  ISO_FLAG_CLEAR ; 
 int /*<<< orphan*/  ISO_FLAG_DIRECTORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ stampst ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(iso9660_disk *diskStructure, cd9660node *newnode)
{
	time_t tstamp = stampst.st_ino ? stampst.st_mtime : FUNC8(NULL);
	u_char flag;
	char temp[ISO_FILENAME_MAXLENGTH_WITH_PADDING];

	/* Now populate the isoDirRecord structure */
	FUNC6(temp, 0, ISO_FILENAME_MAXLENGTH_WITH_PADDING);

	(void)FUNC3(diskStructure, newnode->node->name,
	    temp, !(FUNC0(newnode->node->type)));

	flag = ISO_FLAG_CLEAR;
	if (FUNC0(newnode->node->type))
		flag |= ISO_FLAG_DIRECTORY;

	FUNC4(newnode->isoDirRecord, 0,
	    flag, FUNC7(temp), temp);

	/* Set the various dates */

	/* If we want to use the current date and time */

	FUNC5(newnode->isoDirRecord->date, tstamp);

	FUNC2(newnode->fileDataLength,
	    newnode->isoDirRecord->size);
	/* If the file is a link, we want to set the size to 0 */
	if (FUNC1(newnode->node->type))
		newnode->fileDataLength = 0;

	return 1;
}