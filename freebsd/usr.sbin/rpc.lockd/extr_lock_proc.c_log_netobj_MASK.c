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
struct TYPE_3__ {int n_len; int* n_bytes; } ;
typedef  TYPE_1__ netobj ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAX_NETOBJ_SZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC2(netobj *obj)
{
	char objvalbuffer[(sizeof(char)*2)*MAX_NETOBJ_SZ+2];
	char objascbuffer[sizeof(char)*MAX_NETOBJ_SZ+1];
	unsigned int i, maxlen;
	char *tmp1, *tmp2;

	/* Notify of potential security attacks */
	if (obj->n_len > MAX_NETOBJ_SZ)	{
		FUNC1(LOG_DEBUG, "SOMEONE IS TRYING TO DO SOMETHING NASTY!\n");
		FUNC1(LOG_DEBUG, "netobj too large! Should be %d was %d\n",
		    MAX_NETOBJ_SZ, obj->n_len);
	}
	/* Prevent the security hazard from the buffer overflow */
	maxlen = (obj->n_len < MAX_NETOBJ_SZ ? obj->n_len : MAX_NETOBJ_SZ);
	for (i=0, tmp1 = objvalbuffer, tmp2 = objascbuffer; i < maxlen;
	    i++, tmp1 +=2, tmp2 +=1) {
		FUNC0(tmp1,"%02X",*(obj->n_bytes+i));
		FUNC0(tmp2,"%c",*(obj->n_bytes+i));
	}
	*tmp1 = '\0';
	*tmp2 = '\0';
	FUNC1(LOG_DEBUG,"netobjvals: %s\n",objvalbuffer);
	FUNC1(LOG_DEBUG,"netobjascs: %s\n",objascbuffer);
}