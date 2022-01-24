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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  s_in ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* FUNC9 (TYPE_1__) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int pps ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*) ; 

int FUNC19(int argc, char* argv[]) {
	int port = 6969;
	struct sockaddr_in s_in;
	int s;
	int rd;
	int len;
	char buf[64];
	struct timeval tv;
	int do_it = 0;
	fd_set rfds;
	char ip[17];

	if( argc > 1)
		pps = FUNC4(argv[1]);

	FUNC14("Packets per second=%d\n", pps);	

	s = FUNC17(PF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if( s < 0)
		FUNC6(1, "socket()");

	s_in.sin_family = PF_INET;
	s_in.sin_port = FUNC8(port);
	s_in.sin_addr.s_addr = INADDR_ANY;

	if( FUNC5(s, (struct sockaddr*)&s_in, sizeof(s_in)) < 0) {
		FUNC13("bind()");
		FUNC7(1);
	}

	while(1) {
		FUNC3(do_it >= 0);
		len = sizeof(struct sockaddr_in);

		FUNC11(&tv, 0, sizeof(tv));
		tv.tv_usec = 1000*10;
		FUNC2(&rfds);
		FUNC1(s, &rfds);
		rd = FUNC16(s + 1, &rfds, NULL ,NULL ,&tv);
		if (rd == -1) {
			FUNC13("select()");
			FUNC7(1);
		}
		if (rd == 1 && FUNC0(s, &rfds)) {
			rd = FUNC15(s, buf, 64, 0, (struct sockaddr*)&s_in, &len);

			if(rd < 0) {
				FUNC13("read died");
				FUNC7(1);
			}

			if(rd == 5 && FUNC10(buf, "sorbo", 5) == 0) {
				FUNC18(ip, "%s", FUNC9(s_in.sin_addr));
				FUNC14("Got signal from %s\n", ip);
#ifdef INSANE
				do_it = 10;
#else				
				do_it = 2;
#endif				
			}	
		}		

		if (do_it) {	
			FUNC14("Sending stuff to %s\n", ip);

			FUNC12(s, &s_in);
			do_it--;

			if(do_it == 0)
			FUNC14("Stopping send\n");
		}
	}
}