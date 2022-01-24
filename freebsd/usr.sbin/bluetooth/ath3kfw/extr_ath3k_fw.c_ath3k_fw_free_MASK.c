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
struct ath3k_firmware {scalar_t__ buf; scalar_t__ fwname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath3k_firmware*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void
FUNC2(struct ath3k_firmware *fw)
{
	if (fw->fwname)
		FUNC1(fw->fwname);
	if (fw->buf)
		FUNC1(fw->buf);
	FUNC0(fw, sizeof(*fw));
}