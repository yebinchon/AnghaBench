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
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
typedef  int /*<<< orphan*/  ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int /*<<< orphan*/  SLI4_ASIC_ID_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{

	FUNC1(textbuf, MGMT_MODE_RD, "asic_id_reg", "0x%04x",
		FUNC0(ocs, SLI4_ASIC_ID_REG));
}