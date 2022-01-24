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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
typedef  int /*<<< orphan*/  ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int /*<<< orphan*/  OCS_SCSI_SERIALNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC3(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
	uint8_t *pserial;
	uint32_t len;
	char sn_buf[256];

	pserial = FUNC1(ocs, OCS_SCSI_SERIALNUMBER);
	if (pserial) {
		len = *pserial ++;
		FUNC2(sn_buf, (char*)pserial, len);
		sn_buf[len] = '\0';
		FUNC0(textbuf, MGMT_MODE_RD, "sn", sn_buf);
	}
}