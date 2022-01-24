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
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;
struct malo_copy_maddr_ctx {int nmc; scalar_t__ macs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 int MALO_HAL_MCAST_MAX ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int nmc)
{
	struct malo_copy_maddr_ctx *ctx = arg;

	if (ctx->nmc == MALO_HAL_MCAST_MAX)
		return (0);

	FUNC0(ctx->macs + (ctx->nmc * IEEE80211_ADDR_LEN),
	    FUNC1(sdl));
	ctx->nmc++;

	return (1);
}