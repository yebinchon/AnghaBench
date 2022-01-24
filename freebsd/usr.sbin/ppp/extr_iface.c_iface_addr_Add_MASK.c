#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; scalar_t__ sin6_family; TYPE_1__ sin_addr; } ;
struct TYPE_4__ {void* ia6t_pltime; void* ia6t_vltime; } ;
struct in6_aliasreq {char const* ifra_name; TYPE_2__ ifra_lifetime; struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_prefixmask; struct sockaddr_in ifra_addr; int /*<<< orphan*/  ifra_broadaddr; int /*<<< orphan*/  ifra_mask; } ;
struct ifaliasreq {char const* ifra_name; TYPE_2__ ifra_lifetime; struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_prefixmask; struct sockaddr_in ifra_addr; int /*<<< orphan*/  ifra_broadaddr; int /*<<< orphan*/  ifra_mask; } ;
struct iface_addr {int /*<<< orphan*/  ifa; int /*<<< orphan*/  peer; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 scalar_t__ AF_UNSPEC ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct in6_aliasreq*) ; 
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogWARN ; 
 int NCP_ASCIIBUFFERSIZE ; 
 void* ND6_INFINITE_LIFETIME ; 
 int /*<<< orphan*/  SIOCAIFADDR ; 
 int /*<<< orphan*/  SIOCAIFADDR_IN6 ; 
 int errno ; 
 int /*<<< orphan*/  in6mask128 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_aliasreq*,char,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sockaddr_storage*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int const FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sockaddr_storage*,struct sockaddr_storage*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC15(const char *name, struct iface_addr *addr, int s)
{
  struct ifaliasreq ifra;
#ifndef NOINET6
  struct in6_aliasreq ifra6;
#endif
  struct sockaddr_in *me4, *msk4, *peer4;
  struct sockaddr_storage ssme, sspeer, ssmsk;
  int res, saved_errno;

  FUNC10(&addr->ifa, &ssme, &ssmsk);
  FUNC7(&addr->peer, &sspeer);
  res = 0;

  switch (FUNC9(&addr->ifa)) {
  case AF_INET:
    FUNC5(&ifra, '\0', sizeof ifra);
    FUNC14(ifra.ifra_name, name, sizeof ifra.ifra_name - 1);

    me4 = (struct sockaddr_in *)&ifra.ifra_addr;
    FUNC4(me4, &ssme, sizeof *me4);

    msk4 = (struct sockaddr_in *)&ifra.ifra_mask;
    FUNC4(msk4, &ssmsk, sizeof *msk4);

    peer4 = (struct sockaddr_in *)&ifra.ifra_broadaddr;
    if (FUNC6(&addr->peer) == AF_UNSPEC) {
      peer4->sin_family = AF_INET;
      peer4->sin_len = sizeof(*peer4);
      peer4->sin_addr.s_addr = INADDR_NONE;
    } else
      FUNC4(peer4, &sspeer, sizeof *peer4);

    res = FUNC0(s, SIOCAIFADDR, &ifra);
    saved_errno = errno;
    if (FUNC1(LogDEBUG)) {
      char buf[NCP_ASCIIBUFFERSIZE];

      FUNC12(buf, sizeof buf, "%s", FUNC11(&addr->ifa));
      FUNC2(LogWARN, "%s: AIFADDR %s -> %s returns %d\n",
                 ifra.ifra_name, buf, FUNC8(&addr->peer), res);
    }
    break;

#ifndef NOINET6
  case AF_INET6:
    FUNC5(&ifra6, '\0', sizeof ifra6);
    FUNC14(ifra6.ifra_name, name, sizeof ifra6.ifra_name - 1);

    FUNC4(&ifra6.ifra_addr, &ssme, sizeof ifra6.ifra_addr);
    FUNC4(&ifra6.ifra_prefixmask, &ssmsk, sizeof ifra6.ifra_prefixmask);
    if (FUNC6(&addr->peer) == AF_UNSPEC)
      ifra6.ifra_dstaddr.sin6_family = AF_UNSPEC;
    else if (FUNC3(&((struct sockaddr_in6 *)&ssmsk)->sin6_addr, &in6mask128,
		    sizeof in6mask128) == 0)
      FUNC4(&ifra6.ifra_dstaddr, &sspeer, sizeof ifra6.ifra_dstaddr);
    ifra6.ifra_lifetime.ia6t_vltime = ND6_INFINITE_LIFETIME;
    ifra6.ifra_lifetime.ia6t_pltime = ND6_INFINITE_LIFETIME;

    res = FUNC0(s, SIOCAIFADDR_IN6, &ifra6);
    saved_errno = errno;
    break;
#endif
  }

  if (res == -1) {
    char dst[NCP_ASCIIBUFFERSIZE];
    const char *end =
#ifndef NOINET6
      FUNC9(&addr->ifa) == AF_INET6 ? "_IN6" :
#endif
      "";

    if (FUNC6(&addr->peer) == AF_UNSPEC)
      FUNC2(LogWARN, "iface add: ioctl(SIOCAIFADDR%s, %s): %s\n",
                 end, FUNC11(&addr->ifa), FUNC13(saved_errno));
    else {
      FUNC12(dst, sizeof dst, "%s", FUNC8(&addr->peer));
      FUNC2(LogWARN, "iface add: ioctl(SIOCAIFADDR%s, %s -> %s): %s\n",
                 end, FUNC11(&addr->ifa), dst, FUNC13(saved_errno));
    }
  }

  return res != -1;
}