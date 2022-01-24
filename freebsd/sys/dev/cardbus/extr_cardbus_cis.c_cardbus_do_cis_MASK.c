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
struct tuple_callbacks {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BAR ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  FUNCE ; 
 int /*<<< orphan*/  FUNCID ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  INDIRECT ; 
 int /*<<< orphan*/  LINKTARGET ; 
 int /*<<< orphan*/  LONGLINK_A ; 
 int /*<<< orphan*/  LONGLINK_C ; 
 int /*<<< orphan*/  LONGLINK_CB ; 
 int /*<<< orphan*/  LONGLINK_MFC ; 
 struct tuple_callbacks FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANFID ; 
 int /*<<< orphan*/  VERS_1 ; 
 int /*<<< orphan*/  bar ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tuple_callbacks*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  end ; 
 int /*<<< orphan*/  funce ; 
 int /*<<< orphan*/  funcid ; 
 int /*<<< orphan*/  generic ; 
 int /*<<< orphan*/  linktarget ; 
 int /*<<< orphan*/  manfid ; 
 int /*<<< orphan*/  unhandled ; 
 int /*<<< orphan*/  vers_1 ; 

int
FUNC2(device_t cbdev, device_t child)
{
	struct tuple_callbacks init_callbacks[] = {
		FUNC0(LONGLINK_CB,		unhandled),
		FUNC0(INDIRECT,		unhandled),
		FUNC0(LONGLINK_MFC,		unhandled),
		FUNC0(BAR,			bar),
		FUNC0(LONGLINK_A,		unhandled),
		FUNC0(LONGLINK_C,		unhandled),
		FUNC0(LINKTARGET,		linktarget),
		FUNC0(VERS_1,		vers_1),
		FUNC0(MANFID,		manfid),
		FUNC0(FUNCID,		funcid),
		FUNC0(FUNCE,		funce),
		FUNC0(END,			end),
		FUNC0(GENERIC,		generic),
	};

	return (FUNC1(cbdev, child, init_callbacks, NULL));
}