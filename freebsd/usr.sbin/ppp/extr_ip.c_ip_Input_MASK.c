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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_5__ {int /*<<< orphan*/  family; } ;
struct tun_data {char* data; TYPE_2__ header; } ;
struct mbuf {int dummy; } ;
struct link {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  fd; scalar_t__ header; } ;
struct TYPE_4__ {int /*<<< orphan*/  alive; int /*<<< orphan*/  in; } ;
struct bundle {TYPE_3__ dev; TYPE_1__ filter; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ FUNC1 (struct bundle*,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bundle*,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 size_t FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,char*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static size_t
FUNC10(struct bundle *bundle, struct link *l, struct mbuf *bp, u_int32_t af)
{
  ssize_t nw;
  size_t nb;
  struct tun_data tun;
  char *data;
  unsigned secs, alivesecs;

  nb = FUNC6(bp);
  if (nb > sizeof tun.data) {
    FUNC4(LogWARN, "ip_Input: %s: Packet too large (got %zd, max %d)\n",
               l->name, nb, (int)(sizeof tun.data));
    FUNC5(bp);
    return 0;
  }
  FUNC7(bp, tun.data, nb);

  secs = 0;
  if (FUNC1(bundle, af, tun.data, nb, &bundle->filter.in,
                  NULL, &secs) < 0)
    return 0;

  alivesecs = 0;
  if (!FUNC0(tun.data, af, &bundle->filter.alive, &alivesecs)) {
    if (secs == 0)
      secs = alivesecs;
    FUNC2(bundle, secs);
  }

  if (bundle->dev.header) {
    tun.header.family = FUNC3(af);
    nb += sizeof tun - sizeof tun.data;
    data = (char *)&tun;
  } else
    data = tun.data;

  nw = FUNC9(bundle->dev.fd, data, nb);
  if (nw != (ssize_t)nb) {
    if (nw == -1)
      FUNC4(LogERROR, "ip_Input: %s: wrote %zd, got %s\n",
                 l->name, nb, FUNC8(errno));
    else
      FUNC4(LogERROR, "ip_Input: %s: wrote %zd, got %zd\n", l->name, nb,
	  nw);
  }

  return nb;
}