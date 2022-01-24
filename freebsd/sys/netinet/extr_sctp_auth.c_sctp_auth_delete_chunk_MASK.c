#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_3__ {int* chunks; int /*<<< orphan*/  num_chunks; } ;
typedef  TYPE_1__ sctp_auth_chklist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int /*<<< orphan*/  SCTP_DEBUG_AUTH1 ; 

int
FUNC1(uint8_t chunk, sctp_auth_chklist_t *list)
{
	if (list == NULL)
		return (-1);

	if (list->chunks[chunk] == 1) {
		list->chunks[chunk] = 0;
		list->num_chunks--;
		FUNC0(SCTP_DEBUG_AUTH1,
		    "SCTP: deleted chunk %u (0x%02x) from Auth list\n",
		    chunk, chunk);
	}
	return (0);
}