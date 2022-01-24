#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_9__ {int len; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ packet_t ;
struct TYPE_10__ {int (* recv ) (TYPE_1__*) ;int /*<<< orphan*/  mru; } ;
typedef  TYPE_2__ channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(int fd, short ev, void *arg)
{
	channel_t *chan = arg;
	packet_t *pkt;
	ssize_t nr;

	pkt = FUNC4(chan);
	if (pkt == NULL) {
		FUNC0(chan);
		return;
	}

	nr = FUNC6(fd, pkt->buf, chan->mru);
	if (nr == -1) {
		FUNC3("channel read error: %m");
		FUNC5(pkt);
		FUNC0(chan);
		return;
	}
	if (nr == 0) {	/* EOF */
		FUNC2("(fd#%d) EOF", fd);
		FUNC5(pkt);
		FUNC0(chan);
		return;
	}
	pkt->len = nr;

	if (chan->recv(pkt) == true)
		FUNC1(pkt);

	FUNC5(pkt);
}