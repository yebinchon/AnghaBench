#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_4__ {int sa_family; } ;
union sctp_sockstore {TYPE_3__ sin6; TYPE_2__ sin; TYPE_1__ sa; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct in_conninfo {int /*<<< orphan*/  inc6_faddr; int /*<<< orphan*/  inc_flags; int /*<<< orphan*/  inc_faddr; int /*<<< orphan*/  inc_fibnum; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  INC_ISIPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct in_conninfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct in_conninfo*) ; 

uint32_t
FUNC2(union sctp_sockstore *addr, uint16_t fibnum)
{
	struct in_conninfo inc;

	FUNC0(&inc, 0, sizeof(struct in_conninfo));
	inc.inc_fibnum = fibnum;
	switch (addr->sa.sa_family) {
#ifdef INET
	case AF_INET:
		inc.inc_faddr = addr->sin.sin_addr;
		break;
#endif
#ifdef INET6
	case AF_INET6:
		inc.inc_flags |= INC_ISIPV6;
		inc.inc6_faddr = addr->sin6.sin6_addr;
		break;
#endif
	default:
		return (0);
	}
	return ((uint32_t)FUNC1(&inc));
}