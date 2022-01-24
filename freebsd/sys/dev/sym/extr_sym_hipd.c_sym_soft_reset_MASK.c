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
typedef  int /*<<< orphan*/  hcb_p ;

/* Variables and functions */
 int /*<<< orphan*/  CABRT ; 
 int DIP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SIP ; 
 int /*<<< orphan*/  nc_dstat ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  nc_sist ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (hcb_p np)
{
	u_char istat;
	int i;

	FUNC2 (nc_istat, CABRT);
	for (i = 1000000 ; i ; --i) {
		istat = FUNC0 (nc_istat);
		if (istat & SIP) {
			FUNC1 (nc_sist);
			continue;
		}
		if (istat & DIP) {
			FUNC2 (nc_istat, 0);
			FUNC0 (nc_dstat);
			break;
		}
	}
	if (!i)
		FUNC3("%s: unable to abort current chip operation.\n",
			FUNC5(np));
	FUNC4 (np);
}