#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtentry {int dummy; } ;
struct TYPE_4__ {struct rtentry* ro_rt; } ;
struct inpcb {TYPE_2__* inp_socket; TYPE_1__ inp_route; } ;
struct TYPE_5__ {int so_error; } ;

/* Variables and functions */
 int EHOSTDOWN ; 
 int EHOSTUNREACH ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

struct inpcb *
FUNC4(struct inpcb *inp, int errno)
{

	FUNC0(inp);
	if ((errno == EHOSTUNREACH || errno == ENETUNREACH ||
	     errno == EHOSTDOWN) && inp->inp_route.ro_rt) {
		FUNC1(inp->inp_route.ro_rt);
		inp->inp_route.ro_rt = (struct rtentry *)NULL;
	}

	inp->inp_socket->so_error = errno;
	FUNC2(inp->inp_socket);
	FUNC3(inp->inp_socket);
	return (inp);
}