#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {int /*<<< orphan*/  locked; } ;

/* Variables and functions */
 int DLT_IEEE802_11_RADIO ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ bpf_s ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 TYPE_1__ chaninfo ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int hopfreq ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(char* ifname) {
	int rd;
	fd_set fds;
	struct timeval tv;
	int dlt = DLT_IEEE802_11_RADIO;

	hopfreq = 1000;

	FUNC9(ifname);
	FUNC7(ifname, dlt);

	while(1) {
		// XXX innefficient all of this...
		if (!chaninfo.locked)
			FUNC4(&tv);
		else {
			tv.tv_sec = 1;
			tv.tv_usec = 0;
		}	

		// especially this...
		FUNC5(&tv);	

		FUNC2(&fds);
		FUNC1(0, &fds);
		FUNC1(bpf_s, &fds);

		rd = FUNC8(bpf_s+1, &fds,NULL , NULL, &tv);
		if (rd == -1)
			FUNC6(1, "select()");
		if (FUNC0(0, &fds))
			FUNC10();
		if (FUNC0(bpf_s, &fds))
			FUNC3();
	}
}