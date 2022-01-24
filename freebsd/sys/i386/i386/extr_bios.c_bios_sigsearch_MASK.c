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
typedef  scalar_t__ u_int32_t ;
typedef  char u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BIOS_SIZE ; 
 scalar_t__ BIOS_START ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

u_int32_t
FUNC3(u_int32_t start, u_char *sig, int siglen, int paralen, int sigofs)
{
    u_char	*sp, *end;
    
    /* compute the starting address */
    if ((start >= BIOS_START) && (start <= (BIOS_START + BIOS_SIZE))) {
	sp = (char *)FUNC0(start);
    } else if (start == 0) {
	sp = (char *)FUNC0(BIOS_START);
    } else {
	return 0;				/* bogus start address */
    }

    /* compute the end address */
    end = (u_char *)FUNC0(BIOS_START + BIOS_SIZE);

    /* loop searching */
    while ((sp + sigofs + siglen) < end) {
	
	/* compare here */
	if (!FUNC2(sp + sigofs, sig, siglen)) {
	    /* convert back to physical address */
	    return((u_int32_t)FUNC1(sp));
	}
	sp += paralen;
    }
    return(0);
}