#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_len; int /*<<< orphan*/  sa_family; } ;
struct ifreq {char* ifr_name; int ifr_flags; TYPE_1__ ifr_addr; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  pidfile ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_6__ {int /*<<< orphan*/ * pfh; int /*<<< orphan*/  state; int /*<<< orphan*/  laddr; int /*<<< orphan*/  raddr; scalar_t__ mru; int /*<<< orphan*/  recv; int /*<<< orphan*/  send; } ;
typedef  TYPE_2__ channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_LINK ; 
 int /*<<< orphan*/  CHANNEL_OPEN ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_MAX_LEN ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int IFF_UP ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFLLADDR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  TAPGIFNAME ; 
 char* _PATH_VARRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  interface_name ; 
 int FUNC6 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  local_bdaddr ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*,char*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tap_recv ; 
 int /*<<< orphan*/  tap_send ; 

void
FUNC17(void)
{
	channel_t *chan;
	struct ifreq ifr;
	int fd, s;
	char pidfile[PATH_MAX];

	fd = FUNC11(interface_name, O_RDWR);
	if (fd == -1) {
		FUNC7("Could not open \"%s\": %m", interface_name);
		FUNC5(EXIT_FAILURE);
	}

	FUNC10(&ifr, 0, sizeof(ifr));
	if (FUNC6(fd, TAPGIFNAME, &ifr) == -1) {
		FUNC7("Could not get interface name: %m");
		FUNC5(EXIT_FAILURE);
	}

	s = FUNC16(AF_INET, SOCK_DGRAM, 0);
	if (s == -1) {
		FUNC7("Could not open PF_LINK socket: %m");
		FUNC5(EXIT_FAILURE);
	}

	ifr.ifr_addr.sa_family = AF_LINK;
	ifr.ifr_addr.sa_len = ETHER_ADDR_LEN;
	FUNC0(ifr.ifr_addr.sa_data, &local_bdaddr);

	if (FUNC6(s, SIOCSIFLLADDR, &ifr) == -1) {
		FUNC7("Could not set %s physical address: %m", ifr.ifr_name);
		FUNC5(EXIT_FAILURE);
	}

	if (FUNC6(s, SIOCGIFFLAGS, &ifr) == -1) {
		FUNC7("Could not get interface flags: %m");
		FUNC5(EXIT_FAILURE);
	}

	if ((ifr.ifr_flags & IFF_UP) == 0) {
		ifr.ifr_flags |= IFF_UP;

		if (FUNC6(s, SIOCSIFFLAGS, &ifr) == -1) {
			FUNC7("Could not set IFF_UP: %m");
			FUNC5(EXIT_FAILURE);
		}
	}

	FUNC3(s);

	FUNC8("Using interface %s with addr %s", ifr.ifr_name,
		FUNC4((struct ether_addr *)&ifr.ifr_addr.sa_data));

	chan = FUNC1();
	if (chan == NULL)
		FUNC5(EXIT_FAILURE);

	chan->send = tap_send;
	chan->recv = tap_recv;
	chan->mru = ETHER_HDR_LEN + ETHER_MAX_LEN;
	FUNC9(chan->raddr, ifr.ifr_addr.sa_data, ETHER_ADDR_LEN);
	FUNC9(chan->laddr, ifr.ifr_addr.sa_data, ETHER_ADDR_LEN);
	chan->state = CHANNEL_OPEN;
	if (!FUNC2(chan, fd))
		FUNC5(EXIT_FAILURE);

	FUNC15(pidfile, sizeof(pidfile), "%s/%s.pid",
		_PATH_VARRUN, ifr.ifr_name);
	chan->pfh = FUNC12(pidfile, 0600, NULL);
	if (chan->pfh == NULL)
		FUNC7("can't create pidfile");
	else if (FUNC14(chan->pfh) < 0) {
		FUNC7("can't write pidfile");
		FUNC13(chan->pfh);
		chan->pfh = NULL;
	}
}