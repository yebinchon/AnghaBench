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
struct iwmbt_firmware {scalar_t__ buf; scalar_t__ fwname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iwmbt_firmware*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct iwmbt_firmware *fw)
{
	if (fw->fwname)
		FUNC0(fw->fwname);
	if (fw->buf)
		FUNC0(fw->buf);
	FUNC1(fw, 0, sizeof(*fw));
}