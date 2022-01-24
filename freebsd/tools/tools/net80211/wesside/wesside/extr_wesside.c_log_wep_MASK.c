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
struct timeval {int dummy; } ;
struct pcap_pkthdr {int caplen; int len; struct timeval ts; } ;
struct ieee80211_frame {int caplen; int len; struct timeval ts; } ;
typedef  int /*<<< orphan*/  pkh ;
struct TYPE_2__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  iv; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pcap_pkthdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 TYPE_1__ weplog ; 
 int FUNC8 (int /*<<< orphan*/ ,struct pcap_pkthdr*,int) ; 

void FUNC9(struct ieee80211_frame* wh, int len) {
	int rd;
	struct pcap_pkthdr pkh;
	struct timeval tv;
	unsigned char *body = (unsigned char*) (wh+1);

	FUNC5(&pkh, 0, sizeof(pkh));
	pkh.caplen = pkh.len = len;
	if (FUNC3(&tv, NULL) == -1)
		FUNC0(1, "gettimeofday()");
	pkh.ts = tv;
	if (FUNC8(weplog.fd, &pkh, sizeof(pkh)) != sizeof(pkh))
		FUNC0(1, "write()");

	rd = FUNC8(weplog.fd, wh, len);

	if (rd == -1) {
		FUNC6("write()");
		FUNC1(1);
	}
	if (rd != len) {
		FUNC7("short write %d out of %d\n", rd, len);
		FUNC1(1);
	}

#if 0
	if (fsync(weplog.fd) == -1) {
		perror("fsync()");
		exit(1);
	}
#endif

	FUNC4(weplog.iv, body, 3);
	weplog.packets++;
}