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
struct ddf_vol_meta {TYPE_1__* vde; } ;
struct TYPE_2__ {int /*<<< orphan*/  VD_Name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct ddf_vol_meta *meta, char *buf)
{
	int len;

	len = FUNC2(FUNC3(buf), 16);
	FUNC1(meta->vde->VD_Name, 0x20, 16);
	FUNC0(meta->vde->VD_Name, buf, len);
}