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
struct bhnd_board_info {int /*<<< orphan*/  board_flags3; int /*<<< orphan*/  board_flags2; int /*<<< orphan*/  board_flags; int /*<<< orphan*/  board_srom_rev; int /*<<< orphan*/  board_rev; int /*<<< orphan*/  board_devid; int /*<<< orphan*/  board_type; int /*<<< orphan*/  board_vendor; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOARDFLAGS ; 
 int /*<<< orphan*/  BOARDFLAGS2 ; 
 int /*<<< orphan*/  BOARDFLAGS3 ; 
 int /*<<< orphan*/  BOARDREV ; 
 int /*<<< orphan*/  BOARDTYPE ; 
 int /*<<< orphan*/  BOARDVENDOR ; 
 int /*<<< orphan*/  DEVID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SROMREV ; 

int
FUNC2(device_t dev, device_t child,
    struct bhnd_board_info *info)
{
	int	error;

	FUNC0(info->board_vendor,	BOARDVENDOR,	0);
	FUNC0(info->board_type,	BOARDTYPE,	0);	/* srom >= 2 */
	FUNC0(info->board_devid,	DEVID,		0);	/* srom >= 8 */
	FUNC1(info->board_rev,	BOARDREV);
	FUNC0(info->board_srom_rev,SROMREV,	0);	/* missing in
								   some SoC
								   NVRAM */
	FUNC1(info->board_flags,	BOARDFLAGS);
	FUNC0(info->board_flags2,	BOARDFLAGS2,	0);	/* srom >= 4 */
	FUNC0(info->board_flags3,	BOARDFLAGS3,	0);	/* srom >= 11 */

	return (0);
}