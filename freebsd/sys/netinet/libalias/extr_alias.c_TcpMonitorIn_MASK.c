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
struct alias_link {int dummy; } ;

/* Variables and functions */
#define  ALIAS_TCP_STATE_CONNECTED 129 
 int ALIAS_TCP_STATE_DISCONNECTED ; 
#define  ALIAS_TCP_STATE_NOT_CONNECTED 128 
 int FUNC0 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct alias_link*,int) ; 
 int TH_FIN ; 
 int TH_RST ; 
 int TH_SYN ; 

__attribute__((used)) static void
FUNC2(u_char th_flags, struct alias_link *lnk)
{

	switch (FUNC0(lnk)) {
	case ALIAS_TCP_STATE_NOT_CONNECTED:
		if (th_flags & TH_RST)
			FUNC1(lnk, ALIAS_TCP_STATE_DISCONNECTED);
		else if (th_flags & TH_SYN)
			FUNC1(lnk, ALIAS_TCP_STATE_CONNECTED);
		break;
	case ALIAS_TCP_STATE_CONNECTED:
		if (th_flags & (TH_FIN | TH_RST))
			FUNC1(lnk, ALIAS_TCP_STATE_DISCONNECTED);
		break;
	}
}