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
struct netobj {scalar_t__ n_len; int /*<<< orphan*/  n_bytes; } ;
typedef  int /*<<< orphan*/  hbuff ;
typedef  int /*<<< orphan*/  cbuff ;

/* Variables and functions */
 int MAXBUFFERSIZE ; 
 int debug_level ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,int,char*,int) ; 

void
FUNC2(const struct netobj *nobj)
{
	char hbuff[MAXBUFFERSIZE*2];
	char cbuff[MAXBUFFERSIZE];

	if (debug_level < 2) {
		return;
	}

	if (nobj == NULL) {
		FUNC0("Null netobj pointer\n");
	}
	else if (nobj->n_len == 0) {
		FUNC0("Size zero netobj\n");
	} else {
		FUNC1(nobj->n_bytes, nobj->n_len,
		    hbuff, sizeof(hbuff), cbuff, sizeof(cbuff));
		FUNC0("netobj: len: %d  data: %s :::  %s\n",
		    nobj->n_len, hbuff, cbuff);
	}
}