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

/* Variables and functions */
#define  CPL_ERR_ARP_MISS 132 
#define  CPL_ERR_CONN_EXIST 131 
#define  CPL_ERR_CONN_RESET 130 
#define  CPL_ERR_CONN_TIMEDOUT 129 
#define  CPL_ERR_TCAM_FULL 128 
 int EAGAIN ; 
 int ECONNREFUSED ; 
 int EHOSTUNREACH ; 
 int EIO ; 
 int ETIMEDOUT ; 

__attribute__((used)) static inline int
FUNC0(int status)
{

	switch (status) {
	case CPL_ERR_CONN_RESET:
		return (ECONNREFUSED);
	case CPL_ERR_ARP_MISS:
		return (EHOSTUNREACH);
	case CPL_ERR_CONN_TIMEDOUT:
		return (ETIMEDOUT);
	case CPL_ERR_TCAM_FULL:
		return (EAGAIN);
	case CPL_ERR_CONN_EXIST:
		return (EAGAIN);
	default:
		return (EIO);
	}
}