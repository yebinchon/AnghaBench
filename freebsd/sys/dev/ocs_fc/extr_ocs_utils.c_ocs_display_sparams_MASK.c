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
typedef  int /*<<< orphan*/  label ;
typedef  int /*<<< orphan*/  fc_plogi_payload_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_DEBUG_ENABLE_SPARAM_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,...) ; 

void
FUNC3(const char *prelabel, const char *reqlabel, int dest, void *textbuf, void *sparams)
{
	char label[64];

	if (sparams == NULL) {
		return;
	}

	switch(dest) {
	case 0:
		if (prelabel != NULL) {
			FUNC2(label, sizeof(label), "[%s] sparam: %s", prelabel, reqlabel);
		} else {
			FUNC2(label, sizeof(label), "sparam: %s", reqlabel);
		}

		FUNC1(OCS_DEBUG_ENABLE_SPARAM_DUMP, NULL, label, sparams, sizeof(fc_plogi_payload_t));
		break;
	case 1:
		FUNC0((ocs_textbuf_t*) textbuf, reqlabel, 0, sparams, sizeof(fc_plogi_payload_t));
		break;
	}
}