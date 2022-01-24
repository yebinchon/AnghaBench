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
typedef  void* u_int32_t ;
struct sockaddr_dl {int sdl_len; void** sdl_data; int /*<<< orphan*/  sdl_alen; int /*<<< orphan*/  sdl_type; int /*<<< orphan*/  sdl_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LINK ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*,char*,void**,void**,void**,void**,void**,void**) ; 

__attribute__((used)) static int
FUNC4(char *ev, struct sockaddr_dl *sa)
{
	char *cp;
	u_int32_t a[6];
	int count;

	FUNC0(sa, sizeof(*sa));
	sa->sdl_len = sizeof(*sa);
	sa->sdl_family = AF_LINK;
	sa->sdl_type = IFT_ETHER;
	sa->sdl_alen = ETHER_ADDR_LEN;
	if ((cp = FUNC2(ev)) == NULL)
		return (1);
	count = FUNC3(cp, "%x:%x:%x:%x:%x:%x",
	    &a[0], &a[1], &a[2], &a[3], &a[4], &a[5]);
	FUNC1(cp);
	if (count != 6)
		return (1);
	sa->sdl_data[0] = a[0];
	sa->sdl_data[1] = a[1];
	sa->sdl_data[2] = a[2];
	sa->sdl_data[3] = a[3];
	sa->sdl_data[4] = a[4];
	sa->sdl_data[5] = a[5];
	return (0);
}