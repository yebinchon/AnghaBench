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
struct sockaddr_dl {scalar_t__ sdl_nlen; size_t sdl_len; int /*<<< orphan*/ * sdl_data; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct if_msghdr {scalar_t__ ifm_type; int /*<<< orphan*/  ifm_addrs; int /*<<< orphan*/  ifm_msglen; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int AF_ROUTE ; 
 int CTL_NET ; 
 int NET_RT_IFLIST ; 
 size_t RTAX_IFP ; 
 int RTAX_MAX ; 
 scalar_t__ RTM_IFINFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr**) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct sockaddr_dl *
FUNC8(char *name)
{
	int mib[] = {CTL_NET, AF_ROUTE, 0, 0, NET_RT_IFLIST, 0};
	char *buf, *next, *lim;
	size_t len;
	struct if_msghdr *ifm;
	struct sockaddr *sa, *rti_info[RTAX_MAX];
	struct sockaddr_dl *sdl = NULL, *ret_sdl;

	if (FUNC7(mib, FUNC4(mib), NULL, &len, NULL, 0) < 0)
		return(NULL);
	if ((buf = FUNC2(len)) == NULL)
		return(NULL);
	if (FUNC7(mib, FUNC4(mib), buf, &len, NULL, 0) < 0) {
		FUNC0(buf);
		return (NULL);
	}

	lim = buf + len;
	for (next = buf; next < lim; next += ifm->ifm_msglen) {
		ifm = (struct if_msghdr *)(void *)next;
		if (ifm->ifm_type == RTM_IFINFO) {
			sa = (struct sockaddr *)(ifm + 1);
			FUNC1(ifm->ifm_addrs, sa, rti_info);
			if ((sa = rti_info[RTAX_IFP]) != NULL) {
				if (sa->sa_family == AF_LINK) {
					sdl = (struct sockaddr_dl *)(void *)sa;
					if (FUNC5(name) != sdl->sdl_nlen)
						continue; /* not same len */
					if (FUNC6(&sdl->sdl_data[0],
						    name,
						    sdl->sdl_nlen) == 0) {
						break;
					}
				}
			}
		}
	}
	if (next == lim) {
		/* search failed */
		FUNC0(buf);
		return (NULL);
	}

	if ((ret_sdl = FUNC2(sdl->sdl_len)) == NULL) {
		FUNC0(buf);
		return (NULL);
	}
	FUNC3((caddr_t)ret_sdl, (caddr_t)sdl, sdl->sdl_len);

	FUNC0(buf);
	return (ret_sdl);
}