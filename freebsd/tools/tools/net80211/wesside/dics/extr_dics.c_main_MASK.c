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
typedef  int /*<<< orphan*/  u_char ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct pcap_pkthdr {scalar_t__ caplen; } ;
typedef  int /*<<< orphan*/  s_in ;
typedef  int /*<<< orphan*/  rd ;
typedef  int /*<<< orphan*/  pcap_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
#define  DLT_EN10MB 129 
#define  DLT_NULL 128 
 int /*<<< orphan*/  DPORT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  IP_RECVTTL ; 
 int PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PF_INET ; 
 unsigned char PRGA_LEN ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 unsigned char TTLSENT ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,struct pcap_pkthdr*) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int pps ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC17 (int,unsigned char*,char*,unsigned short,unsigned char) ; 
 int FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 

int FUNC22(int argc, char *argv[]) {
	int s, us;
	int rd = 1;

#if 0	
	const u_char* buf;
	char errbuf[PCAP_ERRBUF_SIZE];
	struct pcap_pkthdr phdr;
	pcap_t* p;
	int dtl;
#endif	

	int got_it = 0;
	char ip[16] = "\x00";
	unsigned char ttl = 0;
	unsigned short port;
	struct sockaddr_in s_in;
	struct timeval tv;
	fd_set rfds;
	unsigned char* sip = 0;

	if (argc < 2) {
		FUNC15("Usage: %s <sip> [pps]\n", argv[0]);
		FUNC7(1);
	}

	if (argc > 2) {
		pps = FUNC3(argv[2]);
	}

	FUNC15("PPS=%d\n", pps);

	sip = argv[1];

	FUNC9(&s_in, 0, sizeof(s_in));
	us = FUNC19 (PF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (s == -1) {
		FUNC14("socket()");
		FUNC7(1);
	}
	s_in.sin_family = PF_INET;
	s_in.sin_addr.s_addr = INADDR_ANY;
	s_in.sin_port = FUNC8(DPORT);
	if (FUNC4 (us, (struct sockaddr*)&s_in, sizeof(s_in)) == -1) {
		FUNC14("bind()");
		FUNC7(1);
	}

	rd = 1;
	if (FUNC18(us, IPPROTO_IP, IP_RECVTTL, &rd, sizeof(rd)) == -1) {
		FUNC14("setsockopt()");
		FUNC7(1);
	}

	s = FUNC19 (PF_INET, SOCK_RAW, IPPROTO_UDP);
	if (s == -1) {
		FUNC14("socket()");
		FUNC7(1);
	}
	
	rd = 1;
	if (FUNC18(s, IPPROTO_IP, IP_HDRINCL, &rd, sizeof(rd)) == -1) {
		FUNC14("setsockopt()");
		FUNC7(1);
	}


#if 0
        p = pcap_open_live(argv[1], 512, 0, 25, errbuf);
	if (!p) {
		printf("pcap_open_live(): %s\n", errbuf);
		exit(1);
	}
	
	dtl = pcap_datalink(p);

	switch (dtl) {
		case DLT_NULL:
			dtl = 4;
			break;

		case DLT_EN10MB:
			dtl = 14;
			break;

		default:
			printf("Unknown datalink %d\n", dtl);
			exit(1);
	}

	printf("Datalink size=%d\n", dtl);
#endif
	while (1) {
#if 0	
		buf = pcap_next(p, &phdr);
		if (buf) {
			if (check_signal(buf+dtl, phdr.caplen-dtl, 
					 ip, &ttl, &port)) {
				got_it = 2;
				printf("Got signal from %s:%d TTL=%d\n", 
				       ip, port, ttl);
			}	
		}
#endif
		FUNC2(&rfds);
		FUNC1(us, &rfds);
		tv.tv_sec = 0;
		tv.tv_usec = 10*1000;
		rd = FUNC16(us+1, &rfds, NULL, NULL, &tv);
		if (rd == -1) {
			FUNC14("select()");
			FUNC7(1);
		}
		if (rd == 1 && FUNC0(us, &rfds)) {
			char ipnew[16];
			unsigned char ttlnew;
			if (FUNC5(us, ipnew, &ttlnew, &port)) {
				int send_ttl = 0;
				if (ttlnew != ttl || FUNC20(ipnew, ip) != 0 ||
				    got_it == 0) {
				    	send_ttl = 1;
				}	
				ttl = ttlnew;
				FUNC21(ip, ipnew);
				
				FUNC15("Got signal from %s:%d TTL=%d\n", 
				       ip, port, ttl);
				got_it = 2;
				
				if (send_ttl) {
					FUNC15("Sending ttl (%d)...\n", ttl);
					FUNC17(s, sip, ip, port, 69 + (TTLSENT-ttl));
				}	
			}	
		}

		if (got_it) {
			FUNC15("Sending stuff to %s...\n", ip);
			FUNC17(s, sip, ip, port, PRGA_LEN);
			got_it--;

			if (got_it == 0) {
				FUNC15("Stopping send\n");
			}
		}
	}

#if 0
	pcap_close(p);
#endif

	FUNC6(s);
	FUNC6(us);
	FUNC7(0);
}