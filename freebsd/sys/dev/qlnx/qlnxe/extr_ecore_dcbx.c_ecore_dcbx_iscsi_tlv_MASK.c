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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;

/* Variables and functions */
 int /*<<< orphan*/  DCBX_APP_SF_IEEE_TCP_PORT ; 
 scalar_t__ ECORE_TCP_PORT_ISCSI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(u32 app_info_bitmap, u16 proto_id, bool ieee)
{
	bool port;

	if (ieee)
		port = FUNC1(app_info_bitmap,
						DCBX_APP_SF_IEEE_TCP_PORT);
	else
		port = FUNC0(app_info_bitmap);

	return !!(port && (proto_id == ECORE_TCP_PORT_ISCSI));
}