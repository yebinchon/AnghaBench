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
typedef  int u_char ;

/* Variables and functions */
 int M_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static int FUNC1 (u_char * msg)
{
	u_char i;
	FUNC0 ("%x",*msg);
	if (*msg==M_EXTENDED) {
		for (i=1;i<8;i++) {
			if (i-1>msg[1]) break;
			FUNC0 ("-%x",msg[i]);
		}
		return (i+1);
	} else if ((*msg & 0xf0) == 0x20) {
		FUNC0 ("-%x",msg[1]);
		return (2);
	}
	return (1);
}