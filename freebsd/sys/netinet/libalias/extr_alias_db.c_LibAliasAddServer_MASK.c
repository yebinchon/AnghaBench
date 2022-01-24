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
typedef  int /*<<< orphan*/  u_short ;
struct in_addr {int dummy; } ;
struct server {struct server* next; int /*<<< orphan*/  port; struct in_addr addr; } ;
struct libalias {int dummy; } ;
struct alias_link {struct server* server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 struct server* FUNC2 (int) ; 

int
FUNC3(struct libalias *la, struct alias_link *lnk, struct in_addr addr, u_short port)
{
	struct server *server;
	int res;

	FUNC0(la);
	(void)la;

	server = FUNC2(sizeof(struct server));

	if (server != NULL) {
		struct server *head;

		server->addr = addr;
		server->port = port;

		head = lnk->server;
		if (head == NULL)
			server->next = server;
		else {
			struct server *s;

			for (s = head; s->next != head; s = s->next);
			s->next = server;
			server->next = head;
		}
		lnk->server = server;
		res = 0;
	} else
		res = -1;

	FUNC1(la);
	return (res);
}